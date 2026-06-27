cask "codex-plus-plus" do
  version "1.2.19"

  on_arm do
    sha256 "f4e0f1631c19c71fb3528f3575c17b5bdc3e05986540945af1781db453e9bb6b"

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
