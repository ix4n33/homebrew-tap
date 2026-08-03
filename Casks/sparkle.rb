cask "sparkle" do
  version "1.26.7"

  on_arm do
    sha256 "89cfdc4c816dd2ae2b83f7ef7c9e3c848430206b415e11f14ccb70aaa21dd305"

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
