cask "animeko@beta" do
  version "6.0.0-beta01"

  on_arm do
    sha256 "d42ae234d9e14b6617b37f3c493a4b15248367ba7374bad68d271515e1010b9f"

    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
