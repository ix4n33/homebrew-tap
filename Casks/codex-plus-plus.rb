cask "codex-plus-plus" do
  version "1.2.38"

  on_arm do
    sha256 "22b173b1cdfdffbbf447b8a8c29767031b25f6f5a0fe22bcc83ae5f64a7734c7"

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
