cask "animeko@alpha" do
  version "6.0.0"

  on_arm do
    sha256 "f5990341f3015137da42c322ce17cff53a1ca69f534350433582fd469eadb9ff"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg", verified: "github.com/open-ani/animeko/"
  end

  name "Animeko Alpha"
  desc "Anime streaming client alpha release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
