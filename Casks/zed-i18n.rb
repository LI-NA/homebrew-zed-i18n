cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.25.1,1"
  sha256 arm: "2ef630d39ac18c6099c81d23e0aba8d8e6d6e90f28f800b5d1fb0f50b506ccdf", intel: "d8b1432a78e76a51d454107a04b34c704dfedf72e37e8365852f0afe87157aa3", arm64_linux: "92df7443f285f6853d0ccba5ca9eb9d78d53b1acf5373c83df5473b62c361041", x86_64_linux: "5584f2f9fc89eca5ec3d7230e0d4eb923570fd95f4ea1c6b020cd0c664b6b07b"

  on_macos do
    url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-macos-#{arch}.dmg"
    auto_updates true
    app "Zed i18n.app"
    binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"
  end

  on_linux do
    url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/zed-i18n-linux-#{arch}.tar.gz"
    command_wrapper "zed-i18n", content: <<~SH
      #!/bin/sh
      for arg in "$@"; do
        case "$arg" in
          --) break ;;
          --uninstall)
            echo "Remove this installation with: brew uninstall --cask zed-i18n" >&2
            exit 1
            ;;
        esac
      done
      export ZED_UPDATE_EXPLANATION="${ZED_UPDATE_EXPLANATION:-Run brew upgrade --cask zed-i18n to update.}"
      exec "#{staged_path}/zed.app/bin/zed" "$@"
    SH
    caveats <<~EOS
      Run zed-i18n to launch. Desktop menu entries are not installed.
      Linux requires system ALSA and Vulkan libraries and a working graphics driver.
    EOS
  end

  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"
end
