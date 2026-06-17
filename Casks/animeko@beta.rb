cask "animeko@beta" do
  version "5.7.0-beta01"

  on_arm do
    sha256 "472eaf123a69621b117c3e5efa1062606acb9ac5c859088a9cd457b9fa4852e2"

    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
