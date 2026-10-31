cask "codex-plus-plus" do
  version "2.1.4"

  on_arm do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "ab551d565bacfe1835a6a70cc9b39f3d2c05b00122287145cb73ffffb38c3b52"
  end

  on_intel do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "ab551d565bacfe1835a6a70cc9b39f3d2c05b00122287145cb73ffffb38c3b52"
  end

  name "Codex++"
  desc "Enhancement launcher and manager for Codex App"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus"

  depends_on macos: :monterey
  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
