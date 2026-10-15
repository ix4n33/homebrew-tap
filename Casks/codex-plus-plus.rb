cask "codex-plus-plus" do
  version "1.9.0"

  on_arm do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "0f2656a897362ae5e8fee3df67baf7e908fa0ad77f3ef6192319e5517ce3d121"
  end

  on_intel do
    url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
    sha256 "0f2656a897362ae5e8fee3df67baf7e908fa0ad77f3ef6192319e5517ce3d121"
  end

  name "Codex++"
  desc "Enhancement launcher and manager for Codex App"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus"

  depends_on macos: :monterey
  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
