cask "codex-plus-plus" do
  version "1.2.46"

  on_arm do
    sha256 "081fc71ee0a66d75c17bf9ab95460d091b365f10d1eba017a68b45a3a0b52480"

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
