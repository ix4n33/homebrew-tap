cask "animeko@alpha" do
  version "6.1.0-beta01"

  on_arm do
    sha256 "3722b161926dc6d922c7b3a9f4f7d66c10904b8e8955365c2497056599b240c6"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
