cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.10.0,1"

  language "cs" do
    sha256 arm: "0340c232daf6c94126c0930a4977c4c29f784b760db18177d36b5bec178dca93", intel: "7849f7d1a2907a942aae05e9810e5a3ee9c69fe558214abc393010aebdefee6e"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "1f34853aee7cb5292ee0997ba1e459485c98dca0856354f4aa6f4a25748dd0d5", intel: "4966f0c17a8ab747abb6c73324458e598367212f55797ea4b6c773c6c6cd5392"
    "de-DE"
  end
  language "es" do
    sha256 arm: "a4971a1abeb30e236dec54589ef0c01962fb6df1856edde97144d20681efb90f", intel: "9549c23c8c95777e0db41b116d481a64bfd80b1d1cde5b2d05bec33c69255687"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "828c7546f5a4ac99d2f3952253873879119fef385e455f2a94c2ccc52ea46f8c", intel: "c8c2b97ed0e4181b3ea54d3886be624fc08fa85354891e426f01a2640c981693"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "ef0283afbf400dc1bdb786fab6ee6ecd15f0463b6e43de0c0074fcd00720ec36", intel: "44fd6fb36c3afe85b95d0611105594091bda43fa09d2742653681685be3efa89"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "f7dca9a3c321819e8bc574e3c7e2ae9770663f9006c9a544c9fc7ab46c56bce5", intel: "0e3d506350c4dc441ac45e8a8cc10e65dee7ea36fe2793f67a20961bc4b96ac5"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "2d0213a5590a5f51dbc4b69fac159f02f311704f8408623278bcdb2d7cc52868", intel: "62e31ce57de423e335c77010a2b99a7c97cb93d1403bd3d016c22bb482482726"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "0877f4a12d3a9ff287e9401dcc228964f18fa626c7ae378f2d07a20d346d9d9f", intel: "427e4ad07c712dd804eaa9382d8caafe881dafaff8f6c98df8abe0b6e3f29ab7"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "e0c886e80787a16c488e40fc1c5820b8472acf10f46b91fe25b5d7f687d7b18a", intel: "fa5635e4adf49c74987b0ff68a576bfa1c5c798311c2f3e8a4756ed3e134dafd"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "eb363396a315a0c3eb8b187db2afadcf54ca65c855b95596a53c53699c2d67f6", intel: "c6833aec0b4f9153d597b7a414dd708ad79e34047a0831624aabb7d4945b2dc4"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "15801a9ae86fc94a698108cd4c0109fa38e9260afbb0258364595f0f437d7afb", intel: "95433607fad5eda727bbae03ff3b7acbad6c47606ec7bce1185ffa8e3408eaf6"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "275620a619d940ba7fae53e0be2ee59abcedcc6073b9e84661d77c497cd29bf6", intel: "fb3b4128501ffd5495fd9bdd168d8e51638a9582f15269ec00ea74dffb812a34"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "a62185b1bab75581cd355706b530f911d0a85a54d70410d6c427127d07fded19", intel: "7b69ca91cff093542958db67901587b7e65f1d6dece49fcb967572bb7aa1bb42"
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
