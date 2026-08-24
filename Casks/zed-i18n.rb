cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.16.2,1"
  sha256 arm: "3d206f42568206d97b446ceebc6088f4f25b4a6129aab97478bc37b68769dbce", intel: "a36c610f8af4578285965e71c5c223777c0ef1e8fd943b507980c84277c753e8"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
