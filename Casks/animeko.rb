cask "animeko" do
    version "5.6.0"

    on_arm do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
      sha256 "c1c0e23a4d30ddef4aa6b19bee415f81e20ba2b5cbc3a84ea763ced08776f8ff"
    end

    on_intel do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-x86_64.zip"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-x86_64.zip"
      sha256 "9977dc104529845c3c2fe50aed66a2de92449d84c94c375c8505b9a8b6b44119"
    end

    name "Animeko"
    desc "Animeko stable release"
    homepage "https://github.com/open-ani/animeko"
    app "Ani.app"
  end
