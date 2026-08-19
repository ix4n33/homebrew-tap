cask "codex-plus-plus" do
  version "1.2.49"

  on_arm do
    sha256 "b5781275d9b5702d137fbf1d0fcb98d8bad15f38629cbb13a0b0aabd89614f0c"

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
