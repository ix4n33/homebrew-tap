cask "codex-plus-plus" do
  version "1.2.5"

  on_arm do
    sha256 "eedc953a9a9284845a3b6fd971a7f706921fd0b61c19a8060e1bd2859fb98ea2"

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
