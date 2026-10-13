cask "animeko@beta" do
  version "6.3.0"

  on_arm do
    sha256 "a848920dfa1a193eacbf253b41ada9e723054798c31df17c74efa29575a3864a"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
