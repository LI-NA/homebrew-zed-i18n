cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.21.0,1"
  sha256 arm: "239bf2692efb859e81806eeb9e95c7a0e3529aea7517d1b026fd1944ddc19c04", intel: "c4c3a8602ac753029711867d4b395732de48c9990154f4cfa6baf6277b11041b", arm64_linux: "35ab997c09c73e0c97cf4d7d0ac302d9cc25951e7be2fce25ecddb9ad62411fd", x86_64_linux: "abd0290ff857d4a954115951501a3a0e1ce9442a5609933c7a97bedf43d198b1"

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
