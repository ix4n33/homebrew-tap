cask "kazumi" do
  version "2.4.1"

  on_arm do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "e331077f10428a8a50b16c0df485d5c25cec345d873eaaed0ee377ab16aa800b"
  end

  on_intel do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "e331077f10428a8a50b16c0df485d5c25cec345d873eaaed0ee377ab16aa800b"
  end

  name "Kazumi"
  desc "Anime streaming client"
  homepage "https://github.com/Predidit/Kazumi"

  depends_on macos: :monterey
  app "Kazumi.app"
end
