cask "codex-plus-plus" do
  version "1.2.34"

  on_arm do
    sha256 "6bea92ead7d37f4bc93203a26eb7340e1c601c8ba1db0a5b34b1dcee2805ce11"

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
