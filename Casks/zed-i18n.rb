cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.20.2,2"
  sha256 arm: "69bb25e90bcedb00627cd93496a241b3b930d27364cdcc8771b5e48bf05ff4b6", intel: "11cddcaffbb0742ee1b6be26d964cf1730937dad508841f4a66355cf5f690516", arm64_linux: "0f92c623b132e174883acc87fadaf07064f2bfdbf0eed1a23ad1fc3543fe478e", x86_64_linux: "bf4d262c83efd7543f948d56b6b3964e75324290f92772419d608c167079d4b8"

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
