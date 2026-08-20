cask "codex-plus-plus" do
  version "1.2.50"

  on_arm do
    sha256 "beb3742b36c860ab2e233b6bb707ea8252de11a2ddaeb27ece7abe7eb90a9fd4"

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
