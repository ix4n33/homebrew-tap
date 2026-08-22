cask "animeko@alpha" do
  version "6.1.0-alpha02"

  on_arm do
    sha256 "c86492e9c8be76a4351aa31ef03ba8ff5bc746f7fd259ea72d3dc84ebcd4ea31"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
