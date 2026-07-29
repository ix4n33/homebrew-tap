cask "animeko" do
  version "5.7.1"

  on_arm do
    sha256 "3225bfed03c9e2d4912d3e8ba0fb408fe85f2f843c6b5f46c636c44b13649b3a"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko"
  desc "Anime streaming client stable release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
