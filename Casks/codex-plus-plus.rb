cask "codex-plus-plus" do
  version "2.6.10"

  on_arm do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "183d287ca1085d1832036023a824f1c042dde2337bcb32d6173622cb9a6a9c3b"
  end

  on_intel do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "183d287ca1085d1832036023a824f1c042dde2337bcb32d6173622cb9a6a9c3b"
  end

  name "Codex++"
  desc "Enhancement launcher and manager for Codex App"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus"

  depends_on macos: :monterey
  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
