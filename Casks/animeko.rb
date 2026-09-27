cask "animeko" do
  version "6.2.0"

  on_arm do
    sha256 "12ae3ffebe16f5be0241d731d2109d295ede26524f06b154cafc0f9bd9389c4c"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko"
  desc "Anime streaming client stable release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
