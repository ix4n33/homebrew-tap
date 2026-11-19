cask "codex-plus-plus" do
  version "2.8.0"

  on_arm do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "12785c0161fe8712ebd2a0582986aa67045226304ae7267d8adea7ec248faef3"
  end

  on_intel do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "12785c0161fe8712ebd2a0582986aa67045226304ae7267d8adea7ec248faef3"
  end

  name "Codex++"
  desc "Enhancement launcher and manager for Codex App"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus"

  depends_on macos: :monterey
  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
