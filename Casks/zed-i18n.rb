cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.18.1,1"
  sha256 arm: "67a3807839dbd2a57cdd49d0ef8c73e51c2ee1a78e58b920e0ddd65310fb70c0", intel: "ed83e2d87e135212f7568bb90ba8dc3af34c7aae94c359c0327349033f536bfc"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
