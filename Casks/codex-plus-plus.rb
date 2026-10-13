cask "codex-plus-plus" do
  version "1.7.7"

  on_arm do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "d6b9bb17258e1b7ac78093df61e27cf6060f7c890adbcc20f319f1c6f0cb1ef7"
  end

  on_intel do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "d6b9bb17258e1b7ac78093df61e27cf6060f7c890adbcc20f319f1c6f0cb1ef7"
  end

  name "Codex++"
  desc "Enhancement launcher and manager for Codex App"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus"

  depends_on macos: :monterey
  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
