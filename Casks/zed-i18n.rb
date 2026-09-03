cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.18.0,1"
  sha256 arm: "c4702af3be297b145606d4a46d2f0c1ca7f8f8b0daf4635d9e3c4d97ec7e868c", intel: "ca284fe2cf6faf85ac6c1a851e1f18d5433aee86d53bc1f6b105f4c9b969bcee"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
