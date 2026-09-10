cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.19.2,1"
  sha256 arm: "c857f82b9875fcd10eec64f5301b76677e68012a4066a3a712581db622eb98b4", intel: "95194e3b7cf423a545bde6de549d8856cc47f7831f6558c3a0753f64567e7277"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
