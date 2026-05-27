cask "animeko" do
    version "5.5.2"

    on_arm do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
      sha256 "dd93e487c242ae70b640dc79353af50085df8bdced72896c7a63b666b7060f45"
    end

    on_intel do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-x86_64.zip"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-x86_64.zip"
      sha256 "eca39aa00534b529e35692743e1b960c61b843041b010d49f8ad5eac70a7c191"
    end

    name "Animeko"
    desc "Animeko stable release"
    homepage "https://github.com/open-ani/animeko"
    app "Ani.app"
  end
