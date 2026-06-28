cask "animeko" do
  version "5.7.0"

  on_arm do
    sha256 "45641da20e284376c2bc805a5b806792f0e7acb0676491bfb31d823f330088de"

    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko"
  desc "Anime streaming client stable release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
