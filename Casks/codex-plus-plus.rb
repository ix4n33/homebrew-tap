cask "codex-plus-plus" do
  version "1.2.41"

  on_arm do
    sha256 "1ec9aba45b27beb13058f3b62f025d5ac0572fdb4d517b7e8875367d293dd0cf"

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
