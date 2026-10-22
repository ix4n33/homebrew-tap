cask "animeko@beta" do
  version "6.4.0-beta02"

  on_arm do
    sha256 "5bf9f39dbc5d03ba4a7f00e23e6f316475df0048ddada812029bd460dfc52e1d"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
