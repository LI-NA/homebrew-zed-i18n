cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.18.1,2"
  sha256 arm: "1b57143871556e9c1be88f36f35ee0934fbc018bf8cd8711442c9ea607b86a7f", intel: "42792df689761d23726d6a7ae80ac1d14f8751c4c0b64c8da6231dea9c24dcf8"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
