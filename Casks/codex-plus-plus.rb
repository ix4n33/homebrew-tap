cask "codex-plus-plus" do
  version "1.2.48"

  on_arm do
    sha256 "07062c433a1ae609fede7b5b560fa58b8879dbd78f2978ae1cfe2742bcb2372a"

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
