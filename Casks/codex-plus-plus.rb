cask "codex-plus-plus" do
  version "1.2.30"

  on_arm do
    sha256 "0527af8c32a50321c4cb93773a6349ea3ad261ae0ce412e31c6197b4cdc5fe2c"

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
