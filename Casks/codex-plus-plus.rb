cask "codex-plus-plus" do
  version "1.2.3"

  on_arm do
    sha256 "c110cee2d1a473e10a06e5b87fc7f0b47996aee6aaa9197604ed6bee1f8c29b0"

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
