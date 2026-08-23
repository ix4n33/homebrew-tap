cask "animeko@alpha" do
  version "6.1.0-alpha03"

  on_arm do
    sha256 "5768550bb2a8c8d610eeac14b0335c1066d424d3c983701d6a51b1070f9c906a"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
