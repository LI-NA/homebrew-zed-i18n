cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.18.1,3"
  sha256 arm: "7c441b7c4bde5ed14b23849c57c5abc0866a7fe6ae12101ac38b8b7b593d69e2", intel: "8f79e48dfac01edb1ee324e02f8a1e1bb442ac617200a18fee351dc07c83d49f"

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
