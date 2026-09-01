cask "sparkle" do
  version "1.26.8"

  on_arm do
    sha256 "4de46fa6871200ba4e7bf487e3e7920e9dc0190ffb89fef1d4e77db262cf26c1"

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
