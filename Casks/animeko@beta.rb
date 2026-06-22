cask "animeko@beta" do
  version "5.7.0-beta02"

  on_arm do
    sha256 "01c3d6b4d54e200d93ed8c6c6fa6f643232eaf3c9c510e25af51c36d972bd1d2"

    url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
