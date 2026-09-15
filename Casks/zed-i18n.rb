cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.19.2,1"
  sha256 arm: "c857f82b9875fcd10eec64f5301b76677e68012a4066a3a712581db622eb98b4", intel: "95194e3b7cf423a545bde6de549d8856cc47f7831f6558c3a0753f64567e7277", arm64_linux: "03d402d82ee5354c33a184d6ab7f1693e68a7ceb709570713ded517012a70f8b", x86_64_linux: "cc124a066906f7ab7b157d457d610edec12c7d6609fea407cd5346f562fb5700"

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
