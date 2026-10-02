cask "animeko@alpha" do
  version "6.3.0-alpha01"

  on_arm do
    sha256 "ce4bc38f83fc1459180e268371e4c50877c39540c2572885063706dd86b3318b"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
