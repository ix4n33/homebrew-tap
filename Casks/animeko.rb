cask "animeko" do
    version "5.3.2"

    on_arm do
      url "https://github.com/open-ani/animeko/releases/download/#{version}/ani-#{version}-macos-aarch64.dmg"
      sha256 "d3bac466fa7c8bb331beb279ffab0ab300508fbd26535fd01e8ae3bf700f7e7d"
    end

    on_intel do
      url "https://github.com/open-ani/animeko/releases/download/#{version}/ani-#{version}-macos-x86_64.zip"
      sha256 "accbfbb439f9d92b15952ff74d8c6a8bd13dfa56735f3bd86db18267e3b650bd"
    end

    name "Animeko"
    desc "Animeko stable release"
    homepage "https://github.com/open-ani/animeko"
    app "Ani.app"
  end
