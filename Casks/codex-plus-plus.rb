cask "codex-plus-plus" do
  version "1.2.52"

  on_arm do
    sha256 "6dfd2f0b79006b9b52f5b23e27bfe6ba4c9259ae6f78b03b56fc59c4bc989f47"

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
