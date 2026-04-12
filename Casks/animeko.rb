cask "animeko" do
    version "5.4.3"

    on_arm do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
      sha256 "2132a8c679cbcf5f69b4f30146bbfa9c08d1d4fad1000ce864c2a3a0f8951bca"
    end

    on_intel do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-x86_64.zip"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-x86_64.zip"
      sha256 "54d244e785f29094f2fa3b636416d643b7031ae2c2b0c25761c5908a44209a07"
    end

    name "Animeko"
    desc "Animeko stable release"
    homepage "https://github.com/open-ani/animeko"
    app "Ani.app"
  end
