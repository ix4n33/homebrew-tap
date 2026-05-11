cask "animeko@beta" do
    version "5.5.0-alpha03"

    on_arm do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-aarch64.dmg"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-aarch64.dmg"
      sha256 "c4a5c1d6710dab5f1847dee9e897efbe95e6c8a67f4cd914ea3a5ad5f2b6d191"
    end

    on_intel do
      url "https://d.myani.org/v#{version}/ani-#{version}-macos-x86_64.zip"
      # url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-x86_64.zip"
      sha256 "cadb192916b88f62cce2d0a97b6486f92fca11398c98f7a8d826dd2332874371"
    end

    name "Animeko Beta"
    desc "Animeko beta release"
    homepage "https://github.com/open-ani/animeko"
    app "Ani.app"
  end
