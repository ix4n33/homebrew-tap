cask "kazumi" do
  version "2.4.7"

  on_arm do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "b363959c2f41490306f7909d82d5cc14cc7e897ac562c0956ffd594246c89af1"
  end

  on_intel do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "b363959c2f41490306f7909d82d5cc14cc7e897ac562c0956ffd594246c89af1"
  end

  name "Kazumi"
  desc "Anime streaming client"
  homepage "https://github.com/Predidit/Kazumi"

  depends_on macos: :monterey
  app "Kazumi.app"
end
