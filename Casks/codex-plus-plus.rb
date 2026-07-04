cask "codex-plus-plus" do
  version "1.2.31"

  on_arm do
    sha256 "354823a53ea228afd1e3c4804d70177a0de35fd7e734bf454ca02d66b5d8d95f"

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
