cask "codex-plus-plus" do
  version "2.7.1"

  on_arm do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "41d5239dcdeecf75ebd68c26a340629df3eee5635b2d3113376fd5795d5f74ab"
  end

  on_intel do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "41d5239dcdeecf75ebd68c26a340629df3eee5635b2d3113376fd5795d5f74ab"
  end

  name "Codex++"
  desc "Enhancement launcher and manager for Codex App"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus"

  depends_on macos: :monterey
  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
