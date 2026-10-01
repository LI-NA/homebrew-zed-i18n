cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.22.0,1"
  sha256 arm: "69d70a3c667e2abb21ea2e2ac71777436d16d070ccbd3d8b7fb3c92786521084", intel: "c2cd98f03fb12a1f53b9ef1c152967dc753e27cca2da8fe2847c6cd971694403", arm64_linux: "ea3b2a00ca157946eeab3292b2b530767372d0075303da92e4804678977ee665", x86_64_linux: "857537ac5bd55d73d7f9d80ef36a3df502d71281309f2ca2dfe74fe2c754c079"

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
