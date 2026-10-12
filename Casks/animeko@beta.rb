cask "animeko@beta" do
  version "6.3.0-beta01"

  on_arm do
    sha256 "615e1794dd001171bf5c19b2df79ce25f1e156dacbd412799bb5a5bf050cad09"

    url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
  end

  name "Animeko Beta"
  desc "Anime streaming client beta release"
  homepage "https://github.com/open-ani/animeko"

  depends_on :macos
  depends_on arch: :arm64

  app "Ani.app"
end
