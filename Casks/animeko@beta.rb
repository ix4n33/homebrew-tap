cask "animeko@beta" do
    version "5.5.0-beta02"

    on_arm do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
      sha256 "083a87acf07ea4de3f5974f6f1cad8a7a62225fc715e03ef69eb528a7be2077d"
    end

    on_intel do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-x86_64.zip"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-x86_64.zip"
      sha256 "e6a684072405c9e3892e6f8e9db45ba7c5b11dd68bba10f34916247d0e1a6962"
    end

    name "Animeko Beta"
    desc "Animeko beta release"
    homepage "https://github.com/open-ani/animeko"
    app "Ani.app"
  end
