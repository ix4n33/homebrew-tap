cask "codex-plus-plus" do
  version "2.4.0"

  on_arm do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "3e201a8a2275efcaf81acb40bd224afdc0e9d3c1d9a6712a1bf642f481f5f1e0"
  end

  on_intel do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "3e201a8a2275efcaf81acb40bd224afdc0e9d3c1d9a6712a1bf642f481f5f1e0"
  end

  name "Codex++"
  desc "Enhancement launcher and manager for Codex App"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus"

  depends_on macos: :monterey
  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
