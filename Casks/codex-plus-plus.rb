cask "codex-plus-plus" do
  version "1.2.18"

  on_arm do
    sha256 "a0162d13dd6a32e94f6eac507bfaf8160a52e260ae8b8517407e0668ae37d72a"

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
