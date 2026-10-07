cask "codex-plus-plus" do
  version "1.5.3"

  on_arm do
    sha256 "d8671bc08b5b0de7e19e7bce2dd7ded5c99a2c8dddccab68a7102b2dcb250cf9"

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
