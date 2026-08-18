cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.15.1,1"
  sha256 arm: "d9adc5b7a7977b8c39c03e377362052015696a7881ee7db0e0c3a4e3d878ee30", intel: "0b741b9791de2ef5dd76828cd7c5814bcabf61ed392b2e1dd35bc2767a9ebf80"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
