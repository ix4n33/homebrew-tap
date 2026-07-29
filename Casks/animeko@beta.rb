cask "animeko@beta" do
  version "6.0.0-beta02"

  on_arm do
    sha256 "a5033fd2c2de335feef410c3dc79082b1f3ce34b881140a60cdfde1d4b0c2c60"

    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
