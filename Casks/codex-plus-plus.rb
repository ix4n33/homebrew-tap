cask "codex-plus-plus" do
  version "1.2.32"

  on_arm do
    sha256 "549b6e6ccaae07c76ef2d3363021ffde370f47d8de271d55a96c7cc956dcf910"

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
