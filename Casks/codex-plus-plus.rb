cask "codex-plus-plus" do
  version "1.7.6"

  on_arm do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "831b20b9c64a991c006477e4deaa6c5810579d6fba5ae2ecbee5026a893bbfe9"
  end

  on_intel do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "831b20b9c64a991c006477e4deaa6c5810579d6fba5ae2ecbee5026a893bbfe9"
  end

  name "Codex++"
  desc "Enhancement launcher and manager for Codex App"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus"
  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
