cask "kazumi" do
  version "2.4.3"

  on_arm do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "8aad01a2e23f9b0feab481343e44238908c7f87bbac88dfcdcf5939c30038bba"
  end

  on_intel do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "8aad01a2e23f9b0feab481343e44238908c7f87bbac88dfcdcf5939c30038bba"
  end

  name "Kazumi"
  desc "Anime streaming client"
  homepage "https://github.com/Predidit/Kazumi"

  depends_on macos: :monterey
  app "Kazumi.app"
end
