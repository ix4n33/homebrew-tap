cask "animeko" do
  version "5.6.0"

  on_arm do
    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
    sha256 "c1c0e23a4d30ddef4aa6b19bee415f81e20ba2b5cbc3a84ea763ced08776f8ff"
  end

  name "Animeko"
  desc "Animeko stable release"
  homepage "https://github.com/open-ani/animeko"
  app "Ani.app"
end
