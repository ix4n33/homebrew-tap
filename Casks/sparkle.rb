cask "sparkle" do
  version "1.26.5"

  on_arm do
    sha256 "a047100191e583e90a884871ffef180350d48eb58fbbefd5a4ade6ca466eb58b"

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
