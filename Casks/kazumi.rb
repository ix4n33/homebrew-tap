cask "kazumi" do
  version "2.3.8"

  on_arm do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "5d798a5934f90edd31987b30f1eec7741a91cf72b7ee5ce600aeda7a826f0ad0"
  end

  on_intel do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "5d798a5934f90edd31987b30f1eec7741a91cf72b7ee5ce600aeda7a826f0ad0"
  end

  name "Kazumi"
  desc "Anime streaming client"
  homepage "https://github.com/Predidit/Kazumi"
  app "Kazumi.app"
end
