cask "codex-plus-plus" do
  version "1.2.54"

  on_arm do
    sha256 "209f8478b3daac78a183d4e937e6e42c324a29bf6d58f7fdf59aaa396a67a411"

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
