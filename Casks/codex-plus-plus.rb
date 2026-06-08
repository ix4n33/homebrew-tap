cask "codex-plus-plus" do
  version "1.2.4"

  on_arm do
    sha256 "ef65e7c80823dcf21482863386fa0ebb3113610fc9a3c420fb4cdc022ba479cd"

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
