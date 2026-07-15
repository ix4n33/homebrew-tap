cask "animeko@alpha" do
  version "6.0.0-alpha02"

  on_arm do
    sha256 "aadbacb6b391eb2c5de9edb711abb47fed27aae54b2c386dd550b71525c53ef2"

    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
