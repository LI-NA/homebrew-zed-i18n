cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.24.2,1"
  sha256 arm: "977ba089d58f3ee6265d6c14290a5239c9712c66a5dfe1bb59a9b08ee82d4416", intel: "083658517bd7a5f01feae56fbb1584ef3ca7ec2506d6c7961db76d6253b87d00", arm64_linux: "ed2e2063530659c1ddd62a119fb8e92bbdf375df4b8f68c7ab75864950289c2e", x86_64_linux: "2521ae1993f7fe1d2cb94f246dc45c50c6f73e10cb974839ba51693a97cdf04d"

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
