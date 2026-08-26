cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.17.2,1"
  sha256 arm: "e105d94089e7b45cea2e389d27cea61e223193c53c5c71fa2273b98899bc50b0", intel: "fadcc5ff605850f0ba1ca8f83231e80f7b1d55551a3f20eebe26280311ac5918"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
