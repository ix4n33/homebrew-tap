cask "animeko@beta" do
  version "5.4.0-beta05"
  arch arm: "arm64", intel: "x86_64"
  sha256 arm: "58a24b08f02ef63aaf5a761107d6ea05d48052dcc4306cc7153aed9b53f459bb",
         intel: "f47a5870ecaaad25b8b2114ab4180dfd2fb33e1518e51a556238cacd1765572d"
  url arm: "https://github.com/open-ani/animeko/releases/download/#{version}/ani-#{version}-macos-aarch64.dmg",
      intel: "https://github.com/open-ani/animeko/releases/download/#{version}/ani-#{version}-macos-x86_64.zip"
  name "Animeko Beta"
  desc "Animeko beta release"
  homepage "https://github.com/open-ani/animeko"
  app "Ani.app"
end
