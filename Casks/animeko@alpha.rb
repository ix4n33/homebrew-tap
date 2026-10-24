cask "animeko@alpha" do
  version "6.4.0"

  on_arm do
    sha256 "7786595edad99dc2f82d9de552d0b7151236a2a8a48f1aeeaa913b92f0fd8810"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
