#!/usr/bin/env python3
import argparse
import hashlib
import json
import os
import re
import tempfile
import time
import tomllib
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCES_FILE = ROOT / "sources.toml"
CASKS_DIR = ROOT / "Casks"
FORMULAE_DIR = ROOT / "Formula"
TIMEOUT = 30


def log(message: str):
    print(message, flush=True)


def load_sources(path: Path):
    with path.open("rb") as file:
        return tomllib.load(file)


def github_get_json(url: str):
    log(f"[INFO] Fetching JSON: {url}")
    headers = {
        "Accept": "application/vnd.github+json",
        "User-Agent": "homebrew-tap-generator",
    }
    token = os.environ.get("GITHUB_TOKEN")
    if token:
        headers["Authorization"] = f"Bearer {token}"

    req = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(req, timeout=TIMEOUT) as response:
        data = response.read().decode("utf-8")
        return json.loads(data)


def latest_github_release(source: dict):
    repo = require(source, "repo")
    prerelease = bool(source.get("prerelease", False))
    releases = github_get_json(f"https://api.github.com/repos/{repo}/releases")

    for release in releases:
        if bool(release.get("prerelease")) == prerelease:
            tag_name = require(release, "tag_name")
            version_prefix = source.get("version_prefix", "")
            version = tag_name
            if version_prefix and version.startswith(version_prefix):
                version = version[len(version_prefix) :]
            log(f"[INFO] Matched release {tag_name} for {repo}")
            return version, release

    raise RuntimeError(f"No release found for repo={repo} prerelease={prerelease}")


def resolve_source(source: dict):
    source_type = require(source, "type")
    if source_type == "github_release":
        return latest_github_release(source)
    raise RuntimeError(f"Unsupported source type: {source_type}")


def find_release_asset(release: dict, asset_name: str):
    for asset in release.get("assets", []):
        if asset.get("name") == asset_name:
            return asset
    raise RuntimeError(
        f"Asset {asset_name} not found in release {release.get('tag_name')}"
    )


def format_size(size: int | None):
    if size is None:
        return "unknown"
    if size < 1024:
        return f"{size} B"
    if size < 1024 * 1024:
        return f"{size / 1024:.2f} KiB"
    return f"{size / 1024 / 1024:.2f} MiB"


def format_speed(bytes_per_second: float):
    if bytes_per_second < 1024:
        return f"{bytes_per_second:.2f} B/s"
    if bytes_per_second < 1024 * 1024:
        return f"{bytes_per_second / 1024:.2f} KiB/s"
    return f"{bytes_per_second / 1024 / 1024:.2f} MiB/s"


def download_and_sha256(url: str):
    log(f"[INFO] Downloading: {url}")
    digest = hashlib.sha256()

    with tempfile.NamedTemporaryFile(delete=False) as tmp:
        tmp_path = Path(tmp.name)

    total = 0
    try:
        req = urllib.request.Request(
            url,
            headers={"User-Agent": "homebrew-tap-generator"},
        )
        with urllib.request.urlopen(req, timeout=TIMEOUT) as response:
            total_header = response.headers.get("Content-Length")
            total_size = int(total_header) if total_header else None
            start_time = time.monotonic()
            with tmp_path.open("wb") as file:
                while True:
                    chunk = response.read(1024 * 1024)
                    if not chunk:
                        break
                    file.write(chunk)
                    digest.update(chunk)
                    total += len(chunk)
                    elapsed = max(time.monotonic() - start_time, 0.001)
                    speed = total / elapsed
                    percentage = (
                        f"{total / total_size * 100:.2f}%"
                        if total_size
                        else "unknown"
                    )
                    print(
                        "\r"
                        f"[INFO] Progress: downloaded={format_size(total)} "
                        f"total={format_size(total_size)} "
                        f"percentage={percentage} "
                        f"speed={format_speed(speed)}",
                        end="",
                        flush=True,
                    )

        print()
        sha256 = digest.hexdigest()
        log(f"[INFO] SHA256: {sha256}")
        return sha256
    finally:
        if tmp_path.exists():
            tmp_path.unlink()


def asset_sha256(asset: dict):
    digest = asset.get("digest")
    if isinstance(digest, str) and digest.startswith("sha256:"):
        sha256 = digest.removeprefix("sha256:")
        log(f"[INFO] SHA256 from release asset digest: {sha256}")
        return sha256
    return download_and_sha256(asset["browser_download_url"])


def require(data: dict, key: str):
    value = data.get(key)
    if value is None:
        raise RuntimeError(f"Missing required key: {key}")
    return value


def render_url(template: str, version: str):
    return template.format(version=version)


def render_cask_url(template: str):
    return template.replace("{version}", "#{version}")


def ruby_string(value: str):
    return str(value).replace("\\", "\\\\").replace('"', '\\"')


def render_url_stanza(url: str, verified: str | None, indent: str = "  "):
    line = f'{indent}url "{ruby_string(url)}"'
    if verified:
        line += f', verified: "{ruby_string(verified)}"'
    return line


def formula_class_name(token: str):
    parts = re.split(r"[^A-Za-z0-9]+", token)
    return "".join(part[:1].upper() + part[1:] for part in parts if part)


def render_cask(token: str, config: dict, version: str, artifacts: dict):
    lines = [
        f'cask "{ruby_string(token)}" do',
        f'  version "{ruby_string(version)}"',
        "",
    ]

    if set(artifacts) == {"arm"}:
        arm = artifacts["arm"]
        lines.extend(
            [
                "  on_arm do",
                f'    sha256 "{ruby_string(arm["sha256"])}"',
                "",
                render_url_stanza(arm["url"], arm.get("verified"), "    "),
                "  end",
                "",
            ]
        )
    elif "arm" in artifacts:
        arm = artifacts["arm"]
        lines.extend(
            [
                "  on_arm do",
                render_url_stanza(arm["url"], arm.get("verified"), "    "),
                f'    sha256 "{ruby_string(arm["sha256"])}"',
                "  end",
                "",
            ]
        )

    if "intel" in artifacts:
        intel = artifacts["intel"]
        lines.extend(
            [
                "  on_intel do",
                render_url_stanza(intel["url"], intel.get("verified"), "    "),
                f'    sha256 "{ruby_string(intel["sha256"])}"',
                "  end",
                "",
            ]
        )

    lines.extend(
        [
            f'  name "{ruby_string(require(config, "name"))}"',
            f'  desc "{ruby_string(require(config, "desc"))}"',
            f'  homepage "{ruby_string(require(config, "homepage"))}"',
        ]
    )

    if set(artifacts) == {"arm"}:
        macos = config.get("macos")
        if macos:
            lines.extend(["", f"  depends_on macos: :{ruby_string(macos)}"])
        else:
            lines.extend(["", "  depends_on :macos"])
        lines.append("  depends_on arch: :arm64")

    apps = config.get("app")
    pkg = config.get("pkg")
    if not apps and not pkg:
        raise RuntimeError(f"Missing required app or pkg for cask: {token}")

    if set(artifacts) == {"arm"}:
        lines.append("")

    if pkg:
        lines.append(f'  pkg "{ruby_string(render_cask_url(pkg))}"')

    if apps:
        if isinstance(apps, str):
            apps = [apps]
        for app_name in apps:
            lines.append(f'  app "{ruby_string(app_name)}"')

    uninstall = config.get("uninstall", {})
    pkgutil = uninstall.get("pkgutil")
    if pkgutil:
        lines.extend(
            [
                "",
                "  uninstall pkgutil: " f'"{ruby_string(pkgutil)}"',
            ]
        )

    lines.extend(["end", ""])
    return "\n".join(lines)


def render_formula(token: str, config: dict, version: str, artifact: dict):
    lines = [
        f"class {formula_class_name(token)} < Formula",
        f'  desc "{ruby_string(require(config, "desc"))}"',
        f'  homepage "{ruby_string(require(config, "homepage"))}"',
        f'  url "{ruby_string(artifact["url"])}"',
        f'  version "{ruby_string(version)}"',
        f'  sha256 "{ruby_string(artifact["sha256"])}"',
    ]

    if license_name := config.get("license"):
        lines.append(f'  license "{ruby_string(license_name)}"')

    install = config.get("install", {})
    bins = install.get("bin", [])
    if isinstance(bins, str):
        bins = [bins]
    if bins:
        lines.extend(["", "  def install"])
        for binary in bins:
            lines.append(f'    bin.install "{ruby_string(binary)}"')
        lines.append("  end")

    test = config.get("test", {})
    command = test.get("command")
    if command:
        if isinstance(command, str):
            command = [command]
        args = ", ".join(f'"{ruby_string(arg)}"' for arg in command)
        lines.extend(["", "  test do", f"    system {args}", "  end"])

    lines.extend(["end", ""])
    return "\n".join(lines)


def resolve_cask_artifacts(config: dict, version: str, release: dict):
    resolved = {}
    for arch, artifact in require(config, "artifacts").items():
        asset_name = render_url(require(artifact, "asset"), version)
        release_asset = find_release_asset(release, asset_name)
        url = render_cask_url(require(artifact, "url"))
        sha256 = asset_sha256(release_asset)
        resolved[arch] = {
            "url": url,
            "sha256": sha256,
            "verified": artifact.get("verified"),
        }
    return resolved


def resolve_formula_artifact(config: dict, version: str, release: dict):
    source = require(config, "source")
    asset_name = render_url(require(source, "asset"), version)
    release_asset = find_release_asset(release, asset_name)
    url_template = source.get("url")
    url = (
        render_url(url_template, version)
        if url_template
        else release_asset["browser_download_url"]
    )
    sha256 = asset_sha256(release_asset)
    return {"url": url, "sha256": sha256}


def filter_selected(items: dict, selected: set[str], only_enabled: bool, kind: str):
    if not only_enabled:
        return items
    if not items:
        return {}

    filtered = {token: config for token, config in items.items() if token in selected}
    for token in filtered:
        selected.remove(token)
    if filtered:
        return filtered

    log(f"[INFO] No selected {kind} matched")
    return {}


def generate_casks(casks: dict):
    CASKS_DIR.mkdir(exist_ok=True)
    for token, config in casks.items():
        log(f"[INFO] Generating cask: {token}")
        version, release = resolve_source(require(config, "source"))
        artifacts = resolve_cask_artifacts(config, version, release)
        output = render_cask(token, config, version, artifacts)
        path = CASKS_DIR / f"{token}.rb"
        path.write_text(output, encoding="utf-8")
        log(f"[INFO] Wrote {path.relative_to(ROOT)}")


def generate_formulae(formulae: dict):
    FORMULAE_DIR.mkdir(exist_ok=True)
    for token, config in formulae.items():
        log(f"[INFO] Generating formula: {token}")
        version, release = resolve_source(require(config, "source"))
        artifact = resolve_formula_artifact(config, version, release)
        output = render_formula(token, config, version, artifact)
        path = FORMULAE_DIR / f"{token}.rb"
        path.write_text(output, encoding="utf-8")
        log(f"[INFO] Wrote {path.relative_to(ROOT)}")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--sources",
        type=Path,
        default=SOURCES_FILE,
        help="Path to sources.toml",
    )
    parser.add_argument(
        "--only",
        action="append",
        default=[],
        metavar="TOKEN",
        help="Only generate selected cask or formula token. May be passed multiple times.",
    )
    args = parser.parse_args()

    sources = load_sources(args.sources)
    only_enabled = bool(args.only)
    selected = set(args.only)
    generate_casks(
        filter_selected(sources.get("casks", {}), selected, only_enabled, "cask")
    )
    generate_formulae(
        filter_selected(sources.get("formulae", {}), selected, only_enabled, "formula")
    )
    if selected:
        missing = ", ".join(sorted(selected))
        raise RuntimeError(f"Selected token not found: {missing}")
    log("[INFO] All done")


if __name__ == "__main__":
    main()
