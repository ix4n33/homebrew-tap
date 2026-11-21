cask "kazumi" do
  version "2.4.5"

  on_arm do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "618d78ddc850be1bd2ca08856579df0a08bbd20a9709455161d5d8a2255b48ca"
  end

  on_intel do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "618d78ddc850be1bd2ca08856579df0a08bbd20a9709455161d5d8a2255b48ca"
  end

  name "Kazumi"
  desc "Anime streaming client"
  homepage "https://github.com/Predidit/Kazumi"

  depends_on macos: :monterey
  app "Kazumi.app"
end
