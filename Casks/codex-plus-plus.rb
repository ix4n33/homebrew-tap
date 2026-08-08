cask "codex-plus-plus" do
  version "1.2.45"

  on_arm do
    sha256 "6587cccbb35ba53c915da5525af2c8eb2642b0985919b42d30a1b2c85c2960b9"

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
