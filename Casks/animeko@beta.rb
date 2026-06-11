cask "animeko@beta" do
  version "5.7.0-alpha01"

  on_arm do
    sha256 "83dfab1a9127ff40e010fbda3e09f460ff76629dc9883ba79007f3a3d259f5d8"

    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
