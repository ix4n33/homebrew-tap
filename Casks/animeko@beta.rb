cask "animeko@beta" do
  version "6.4.1"

  on_arm do
    sha256 "9ff2777bccbe1821149fc8b561643f5d55b5b3e52aabf05a7b02f0b113412470"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
