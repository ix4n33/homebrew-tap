cask "kazumi" do
  version "2.3.9"

  on_arm do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "4b1f0c86fd23b5ee884d53864aaac78f97b3117fabb942ff18d351df8d0ca290"
  end

  on_intel do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "4b1f0c86fd23b5ee884d53864aaac78f97b3117fabb942ff18d351df8d0ca290"
  end

  name "Kazumi"
  desc "Anime streaming client"
  homepage "https://github.com/Predidit/Kazumi"

  depends_on macos: :monterey
  app "Kazumi.app"
end
