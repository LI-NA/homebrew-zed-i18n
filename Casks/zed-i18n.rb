cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.15.0,2"
  sha256 arm: "b065ec7730f5df532f9b7d4578eacb9d7041968bacc4f65189ef669885e1cab6", intel: "d3ac623f4b52558cb1efdb273ef95bfa407ebef46d7f8db6e9b3e2d9ec8eee1f"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
