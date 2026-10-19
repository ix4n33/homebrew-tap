cask "animeko@beta" do
  version "6.4.0-beta01"

  on_arm do
    sha256 "f0d3cbf46f8e74edd6920bcf80ce5a1428d862b3aaf27e192dd72d7eecf3992b"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
