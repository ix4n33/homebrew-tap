cask "animeko@beta" do
  version "5.6.0-alpha01"

  on_arm do
    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
    sha256 "6622b20d1f85144a94e4d67c972c9cd077ffc0f82f1bfa1372473c57d1b378a6"
  end

  name "Animeko Beta"
  desc "Animeko beta release"
  homepage "https://github.com/open-ani/animeko"
  app "Ani.app"
end
