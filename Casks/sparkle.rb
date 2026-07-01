cask "sparkle" do
  version "1.26.6"

  on_arm do
    sha256 "ac40fcea5c700e05118fb64893950ac9a42cb4485f44d74991d6df731fe2735f"

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
