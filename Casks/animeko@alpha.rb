cask "animeko@alpha" do
  version "6.2.0-beta01"

  on_arm do
    sha256 "6705c0badf40abcf1461515cffd46f1a8ed81d23324b9558e76ac77b3fd3c04e"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
