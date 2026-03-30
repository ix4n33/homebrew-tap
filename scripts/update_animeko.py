#!/usr/bin/env python3
import hashlib
import json
import sys
import tempfile
import urllib.request
from pathlib import Path
import re

REPO = "open-ani/animeko"
API_RELEASES = f"https://api.github.com/repos/{REPO}/releases"
CASKS_DIR = Path("Casks")
TIMEOUT = 30

TARGETS = {
    "stable": {
        "cask_file": CASKS_DIR / "animeko.rb",
        "prerelease": False,
    },
    "beta": {
        "cask_file": CASKS_DIR / "animeko@beta.rb",
        "prerelease": True,
    },
}


def log(msg: str):
    print(msg, flush=True)


def github_get_json(url: str):
    log(f"[INFO] Fetching JSON: {url}")
    req = urllib.request.Request(
        url,
        headers={
            "Accept": "application/vnd.github+json",
            "User-Agent": "homebrew-tap-updater",
        },
    )
    with urllib.request.urlopen(req, timeout=TIMEOUT) as resp:
        data = resp.read().decode("utf-8")
        log(f"[INFO] JSON fetched: {len(data)} bytes")
        return json.loads(data)


def latest_release(prerelease: bool):
    releases = github_get_json(API_RELEASES)
    log(f"[INFO] Total releases fetched: {len(releases)}")
    for rel in releases:
        if bool(rel.get("prerelease")) == prerelease:
            log(
                f"[INFO] Matched {'beta' if prerelease else 'stable'} release: "
                f"{rel.get('tag_name')}"
            )
            return rel
    raise RuntimeError(f"No release found for prerelease={prerelease}")


def find_asset(release: dict, suffix: str):
    log(f"[INFO] Looking for asset suffix: {suffix}")
    for asset in release.get("assets", []):
        name = asset.get("name", "")
        log(f"[DEBUG] Asset: {name}")
        if name == suffix:
            log(f"[INFO] Matched asset: {name}")
            return asset
    raise RuntimeError(
        f"Asset with exact name {suffix} not found in release {release.get('tag_name')}"
    )


def download_and_sha256(url: str):
    log(f"[INFO] Downloading: {url}")
    h = hashlib.sha256()

    with tempfile.NamedTemporaryFile(delete=False) as tmp:
        tmp_path = Path(tmp.name)

    total = 0
    try:
        req = urllib.request.Request(
            url,
            headers={"User-Agent": "homebrew-tap-updater"},
        )
        with urllib.request.urlopen(req, timeout=TIMEOUT) as resp, open(tmp_path, "wb") as f:
            while True:
                chunk = resp.read(1024 * 1024)
                if not chunk:
                    break
                f.write(chunk)
                h.update(chunk)
                total += len(chunk)
                log(f"[INFO] Downloaded {total / 1024 / 1024:.2f} MiB")

        digest = h.hexdigest()
        log(f"[INFO] SHA256: {digest}")
        return digest
    finally:
        if tmp_path.exists():
            tmp_path.unlink()


def update_cask_file(cask_path: Path, version: str, arm_sha: str, intel_sha: str):
    log(f"[INFO] Updating cask file: {cask_path}")
    text = cask_path.read_text(encoding="utf-8")

    text = re.sub(r'version\s+"[^"]+"', f'version "{version}"', text)
    text = re.sub(
        r'sha256 arm:\s*"[^"]+",\s*intel:\s*"[^"]+"',
        f'sha256 arm: "{arm_sha}",\n         intel: "{intel_sha}"',
        text,
        flags=re.S,
    )

    cask_path.write_text(text, encoding="utf-8")
    log(f"[INFO] Updated version={version} in {cask_path}")


def process_target(name: str, target: dict):
    log(f"[INFO] Processing target: {name}")

    release = latest_release(target["prerelease"])
    version = release["tag_name"].lstrip("v")
    log(f"[INFO] Resolved version: {version}")

    arm_name = f"ani-{version}-macos-aarch64.dmg"
    intel_name = f"ani-{version}-macos-x86_64.zip"

    arm_asset = find_asset(release, arm_name)
    intel_asset = find_asset(release, intel_name)

    arm_sha = download_and_sha256(arm_asset["browser_download_url"])
    intel_sha = download_and_sha256(intel_asset["browser_download_url"])

    update_cask_file(target["cask_file"], version, arm_sha, intel_sha)
    log(f"[INFO] Finished target: {name}")


def main():
    try:
        for name, target in TARGETS.items():
            process_target(name, target)
        log("[INFO] All done")
    except Exception as e:
        log(f"[ERROR] {e}")
        raise


if __name__ == "__main__":
    main()
