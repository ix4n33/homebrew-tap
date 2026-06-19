cask "codex-plus-plus" do
  version "1.2.15"

  on_arm do
    sha256 "cd81809f3e6b035b0e1e20a05bf4551ee15ed4ec4ce432867cef23598f36ae46"

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
