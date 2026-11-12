cask "kazumi" do
  version "2.4.4"

  on_arm do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "372ec688a83a7cfb505992532b3924c13410432b3798a289b70d45997110650e"
  end

  on_intel do
    url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
    sha256 "372ec688a83a7cfb505992532b3924c13410432b3798a289b70d45997110650e"
  end

  name "Kazumi"
  desc "Anime streaming client"
  homepage "https://github.com/Predidit/Kazumi"

  depends_on macos: :monterey
  app "Kazumi.app"
end
