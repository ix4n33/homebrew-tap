cask "animeko@alpha" do
  version "6.1.0"

  on_arm do
    sha256 "f25de8d929118f91ee7c480a7254f4f3955f347134aced08a14d0cf2d6f29f0c"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
