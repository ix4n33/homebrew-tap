cask "codex-plus-plus" do
  version "1.2.21"

  on_arm do
    sha256 "5d3597c628e7fdaa1453f3c42a73e0b0450e5400bc081e62d80437923d37c7dd"

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
