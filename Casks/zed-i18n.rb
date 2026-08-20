cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.16.1,1"
  sha256 arm: "5a2daff640623af2d41ef2cd6358e5321a247458cbf7e1ecfaa3f2406a1592df", intel: "d149d0a5b2a774644d26adeab499e9dba0c206606e2701bfaceab390935418f3"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
