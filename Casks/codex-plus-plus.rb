cask "codex-plus-plus" do
  version "1.2.39"

  on_arm do
    sha256 "9bb61462ceb5b76e1b8cb9b176a69d3da0ba5ecc20a92523273952b31c2d3b86"

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
