cask "kazumi" do
  version "2.4.6"

  on_arm do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "82cbbb27fcb2ec74830c189ecd8b8a0dcd7bcd6a8c6b9aa5d39bca782f9bef72"
  end

  on_intel do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "82cbbb27fcb2ec74830c189ecd8b8a0dcd7bcd6a8c6b9aa5d39bca782f9bef72"
  end

  name "Kazumi"
  desc "Anime streaming client"
  homepage "https://github.com/Predidit/Kazumi"

  depends_on macos: :monterey
  app "Kazumi.app"
end
