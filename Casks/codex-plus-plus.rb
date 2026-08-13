cask "codex-plus-plus" do
  version "1.2.47"

  on_arm do
    sha256 "314bf4d7e34ce8072e7c723ef36c52d0cd99952e94d4d0362ab49acbb757e406"

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
