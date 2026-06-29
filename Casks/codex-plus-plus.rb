cask "codex-plus-plus" do
  version "1.2.24"

  on_arm do
    sha256 "e0188a3bdd17e0b81c7e492fe1b694f8b9a41604e08cf00140d4f8e931c41e52"

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
