cask "animeko@alpha" do
  version "6.0.0-alpha01"

  on_arm do
    sha256 "3b4121d1cdf9a4d0a30bb8361e8a9fdaed8e12457019b8a34c7b3e4b2ec4ef2f"

    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
