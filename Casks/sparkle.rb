cask "sparkle" do
  version "1.26.9"

  on_arm do
    sha256 "301e1daf01b5c836d282e3d0dec779f51e43a8d182b2f850df7a04bcd63cd5ac"

    url "https://github.com/xishang0128/sparkle/releases/download/#{version}/sparkle-macos-#{version}-arm64.pkg"
  end

  name "Sparkle"
  desc "Mihomo proxy client"
  homepage "https://github.com/xishang0128/sparkle"

  depends_on macos: :monterey
  depends_on arch: :arm64

  pkg "sparkle-macos-#{version}-arm64.pkg"

  uninstall pkgutil: "sparkle.app"
end
