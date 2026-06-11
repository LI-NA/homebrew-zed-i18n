cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.5.5,1"

  language "cs" do
    sha256 arm: "01e54d5c335b200399e89af84db7899274360ae33db1cab9220018cbfbdb8209", intel: "7d32c4c7136ac6c906602c6288424cba6798518487f98a154d14e36814ef5d3e"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "9a81f86690b25f428c70828105e2f812352296d2465111068b3b1429625af304", intel: "bc9633947982751258f89ce650ff1f1552cedc90a9af6648552e6f687ee836f5"
    "de-DE"
  end
  language "es" do
    sha256 arm: "8cb36b3d648067a02727af56ff7e59d3df6f70e90443440eb60b55756eca7f5c", intel: "b07804519a02ae0ee3c05951ad0b210533b7dd555ceed3bd12ee5362639227cf"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "9fcf582006d583496f93b8b250adcc3eac28b0681fcf85355edb1d231b47d14a", intel: "33200b1cc691cf2380c173cd8b83b99d54c032a58ceab8d2fd06d1826d97ab8d"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "35ca1555abc87f2f01e6a25f4b4d234a6f71782c995e99cae273a29cac39a182", intel: "9b45da47735bf5a049b329bad774100cca41e31a33d4a4c1aca9da0400d6c399"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "b99ae10e309c57703706bdd54bfeb430d59785bc13028746a53970f48699de0a", intel: "0f6e5932201d3e05fcd243426b99eb2e003401f0bdb127df5655ebdd7cd3c946"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "5a65731a1ec1ec7b949ad20953c10bddcd4766eaa3dd50706cf6ad7c4ddfd50c", intel: "879fc58ecc53362174a2c545a74bcf1cc5f61ebdb1bcdef397e9c2da62b11ad3"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "ef55efa69f88811116a7882f5473e42064a7e84496c79a6b1c36fd3f7347e194", intel: "5abadbc2b8710e31900b08e625046e5bdc766a8e588971f53f363d119ac1564a"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "bb94b91da24cd8a413e97298b82e1bab627eeb68999657f7151307fb00eb9d67", intel: "62d91b628f0d7e41bfff7cd84acfcffd55222a21d8b9033e9dd31ad1a841eaac"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "d174d8583df691ddf1d16f01310a2625097809fbbf9fe7b4724ae6747aaf42f2", intel: "7551fcd125947a4ad7dc14a8b79abfe5309846652d118ee0953453400c8e3c78"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "40896f75ef5a6a521a95350c71de14ac2f099628b0183f0ee96f1f312df3df78", intel: "2238e6e2f9b5d7ca9e1449299052742b20b4dfebed9311085f5135c4b0f4706d"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "c308af9cb547406f65bc8d7cbd32363f084e13b9b8afb4ca40ea3b7aed82e884", intel: "146bc6edca11b562b03ba4b8ec9e56fae979abe471ad34ee531fa79bd48b7b8c"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "784a57877da20ba6b01527f179ad22606a8efba37b3956348cd2a648c34c47db", intel: "5c126615f4c87deb0d607e1829e657343965dd54f7f3db746280d8fd249f4a8a"
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
