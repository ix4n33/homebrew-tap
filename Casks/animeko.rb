cask "animeko" do
    version "5.5.1"

    on_arm do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
      sha256 "0ae4c7cb58ecc6f17fa5734196f56796c555af9b0aff0309bb2e26c6401d0320"
    end

    on_intel do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-x86_64.zip"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-x86_64.zip"
      sha256 "1660c998a45612e0de95bfcecbd860f66148e4cfaf09bfec5110e9f5be4d8f1f"
    end

    name "Animeko"
    desc "Animeko stable release"
    homepage "https://github.com/open-ani/animeko"
    app "Ani.app"
  end
