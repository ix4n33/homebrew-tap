cask "codex-plus-plus" do
  version "1.2.35"

  on_arm do
    sha256 "5bd662ce6d1164ed62cb7c8b654a890a35026aa0d74b09352f4030bbcb3b62dc"

    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-arm64.dmg"
  end

  name "Codex++"
  desc "Enhancement launcher and manager for Codex App"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus"

  depends_on :macos
  depends_on arch: :arm64

  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
