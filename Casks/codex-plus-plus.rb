cask "codex-plus-plus" do
  version "1.2.9"

  on_arm do
    sha256 "9c04d9bf9b9161fb2197902b4cdd317ecba749275778bbd3fe9534eebb837fbd"

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
