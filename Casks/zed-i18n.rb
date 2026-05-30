cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.4.4,1"

  language "cs" do
    sha256 arm: "51707a356081ce278d7467d4ae56c12bca142b1b3489a7d8f08ef2987b298962", intel: "6ea6b497af9cc3b4238222fd69425f1c02c5a0b8bfd781d85c9818ca1de5ff75"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "1160612250abbfbd3f4b9ed402f7c348209a9351a227bc96a9510816eb16fc6a", intel: "898ea090d1a75bb8deb98817557f939b7207190e3d1b7d3b804cd5ca3d50aa3f"
    "de-DE"
  end
  language "es" do
    sha256 arm: "c8515240d945c5882763017cb98fc096a5bb32645c615496045d1d4359781e7c", intel: "9691bcf78f4870001409db8aa0d540b4815ad7c80993fb1c7a40ddd076d9ff8f"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "cece0ca17a3ab6672d281b5aac70e2933d3759751a3d3346a22e3ef534efaa96", intel: "4a05c7222723ac3d6a3d5ec30d822fdcb723692d519115b2d4aaa6abe1737510"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "5cbf8c896c70474a9930f29a130ff308b92b1bd1857ca3650cbe1a526faececb", intel: "c01c09367235cba973a868c17134ffc9dd11b8ed7e2e456a090d3032299f3add"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "c9554d095cbf6801cd6b80c6c3796d4c182f509b1d3fa50c9fe7fd1acaa6eee0", intel: "1e825e913d5dac335d6336c2a90d76d00505105eec68a9322ccf8daa9fbd98fa"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "173c086e255945708c53e6b81b90af16413b73b5ec5d10093c3e9a86d99b0876", intel: "e5abf80d44be29d8289ac96729c7edc2e54c77656494b3dc4fcccd09fec9afc6"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "26d4a037600a1c6412da023cd911b9a39339c6ed1216b19b785525f5be10dfae", intel: "855cbe145016a9d201a7fab1e153782739898a9d08a7bf708f27e817166ff403"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "4d90a0dc39bfd5a752d74747770d7c78df6b2072ac2ee3f8774663cb30d3016b", intel: "853e1565d6c4b3e30688a1d7427f796330bd1d6dc2e041170b3f8fb3703f0537"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "83df11196b49b7d49832ec4316f84aebd74c2d7aa5e9472e18e9cdac1a73bf50", intel: "b03f1b4edc41ad05445637f010accbdb7b025afbed5c7f94708dfbd3c76502e7"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "b6d3d3e6e2769fe465dfb1d3b3d4fcd670095f5b4a81b094363df5ec74ac4b25", intel: "2c3d4e546d39851ad9a496bc3c4f7f2d756aeb597d2774978ba286785a4bea6b"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "72b718ad5bdb0486a35d791a787711809c50073771fa65c51f54eebc6110b4b1", intel: "fe1491ae24170d8bb5f49a835262a5f9dc303e06f10b5ac3dc359b39a652e43c"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "bac60c1096810a2f18bf17a4df207a3ffc25b2255856ef391407e81c0587098c", intel: "26445f1a84f40e4d7797341aadba6081f56980136e0384c993c9b7c36c1a04c2"
    "zh-TW"
  end

  url "https://github.com/LI-NA/zed-i18n/releases/download/v#{version.csv.first}-i18n.#{version.csv.second}/Zed-i18n-#{language}-macos-#{arch}.dmg"
  name "Zed i18n"
  desc "Localized build of the Zed editor"
  homepage "https://github.com/LI-NA/zed-i18n"

  app "Zed i18n.app"
  binary "#{appdir}/Zed i18n.app/Contents/MacOS/cli", target: "zed-i18n"

  auto_updates true
end
