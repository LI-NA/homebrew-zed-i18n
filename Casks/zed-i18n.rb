cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.16.3,1"
  sha256 arm: "3c10447998706520fe3ff3e7154b66e2e0bbc0c2b819b83e65c2c68249447d8d", intel: "21246a920a1e380f101b841c6ce4e37181312e42de7a7915251c990eabd573cb"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
