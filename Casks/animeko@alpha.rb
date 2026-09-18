cask "animeko@alpha" do
  version "6.2.0-alpha01"

  on_arm do
    sha256 "f57005e5df51d895b14c063ff41c07f97d1ef626b3bce9e07de94442007b3ce1"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
