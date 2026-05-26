cask "animeko@beta" do
    version "5.6.0-alpha01"

    on_arm do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
      sha256 "6622b20d1f85144a94e4d67c972c9cd077ffc0f82f1bfa1372473c57d1b378a6"
    end

    on_intel do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-x86_64.zip"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-x86_64.zip"
      sha256 "c8eb2796ff77b32b3c6202eec8bec31a3f63104fb612d479a7f30e10a75e9040"
    end

    name "Animeko Beta"
    desc "Animeko beta release"
    homepage "https://github.com/open-ani/animeko"
    app "Ani.app"
  end
