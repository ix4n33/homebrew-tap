cask "kazumi" do
  version "2.4.2"

  on_arm do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "325b52d2f1b84a482c95dac1f1396daba9d106f2ae4eada19677b15c14cf39a7"
  end

  on_intel do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "325b52d2f1b84a482c95dac1f1396daba9d106f2ae4eada19677b15c14cf39a7"
  end

  name "Kazumi"
  desc "Anime streaming client"
  homepage "https://github.com/Predidit/Kazumi"

  depends_on macos: :monterey
  app "Kazumi.app"
end
