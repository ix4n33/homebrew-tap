cask "sparkle" do
  version "1.26.7"

  on_arm do
    sha256 "0d6805d243d3fc5ce1022daae1c5a61bbbfcade39cd155dca85a355fcda1b737"

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
