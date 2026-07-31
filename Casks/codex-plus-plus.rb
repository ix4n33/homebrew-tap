cask "codex-plus-plus" do
  version "1.2.44"

  on_arm do
    sha256 "91902ec67ca824065c6a8a290606dad699ad4d7f03a91c0bae5e174f3001ac38"

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
