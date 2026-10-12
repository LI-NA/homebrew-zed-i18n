cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.23.3,1"
  sha256 arm: "1b6f1d78c68e013fe2251603e2247ddc213915c87d70cf44435ec4aae3065ea0", intel: "e81c4f9a5a47e3db6314fa689d1329b6e3e74628d42c3aac950aa73ad592901f", arm64_linux: "f32faa96e76e800c0bb5c9d38bfc716d8853cde14953961f13aeb08b2f6f3fbe", x86_64_linux: "43e5ec228b189766bbfad5feb67d8d0cd545db0811f0d6a15e64e86eb946d368"

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
