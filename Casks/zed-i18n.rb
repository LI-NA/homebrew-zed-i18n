cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.17.2,2"
  sha256 arm: "a2392dee7c406f03bd62fee12ea800a796102adfec59a0ca6488e5d900bf3fb4", intel: "38955840d32a696ff21453048e1bc8dcce93773dd6a1871ce9da6dfc01bc5a49"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
