cask "animeko@beta" do
    version "5.4.0-beta05"

    on_arm do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
      sha256 "58a24b08f02ef63aaf5a761107d6ea05d48052dcc4306cc7153aed9b53f459bb"
    end

    on_intel do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-x86_64.zip"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-x86_64.zip"
      sha256 "f47a5870ecaaad25b8b2114ab4180dfd2fb33e1518e51a556238cacd1765572d"
    end

    name "Animeko Beta"
    desc "Animeko beta release"
    homepage "https://github.com/open-ani/animeko"
    app "Ani.app"
  end
