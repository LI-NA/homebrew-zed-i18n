cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.12.0,1"

  language "cs" do
    sha256 arm: "5cffe17c37c515bc79b4f0f5a32e6a2613eb3424b3598a3c792c59b215f97478", intel: "6e66b84f5cff129d8a23fd9a88047b49ac72ebfad85ae7e61bc84df667c56476"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "8aaefe57a951538eac81e4c0c6834d4cfb980bc9f1d0deca9b4f5105fcc6f7b2", intel: "dfc0a26d74f20f1f541ea5b8ae231f08519c0659ff9e7d56f9d95eb171abe629"
    "de-DE"
  end
  language "es" do
    sha256 arm: "f7c889971fb7db326c76afdf19c90ea856e90ad32d3fb57e1d4c2911f6bc1f70", intel: "f09bc5b812e861f760ac18ef848a6d988aac5ad8a4e64c5196ea6e78baeadb89"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "5bb771be0c0863e7f5c4fd5519b51546dca7bacd7b7cc23d4ebbd6d93c455afa", intel: "cfb2f32c6b9b9636ea4ec317e6d64306c6ac82a2ec80504545f36ac512ca40d0"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "8fbd2aefe677d59773794fd199ac6ad48c13ac8c2ed227d5e0608988acfd35f4", intel: "a09e8a95e55fb2b5b996d868338f9312670843aa8eac064bd3da531f23ad578a"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "2374758de792ecbe612804d38cb2c2964aa5773969612913e19cc8df442068bc", intel: "c8bc0065bf53d2c9e0c3c15a4342c5ef197544411fd5947c21e97ae6981d9b25"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "cf904b4cebcf2334593ab9258f3c05e5c85bf85b9b1645370ab3b8fbddb7a4bf", intel: "221e77755ab66aaaadad6a78ad1e4110c69f1ad5e5c4a1393cfacbb9258264ef"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "9aaedb6253fcaddd9b6db9bab2b59fe808e01d3411bea2a57d5bb3f20ae9d769", intel: "cfb963c3b609576e31eec50c43649486313a7f817432ee1eecad7004f19d70c2"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "1a67ce9c587dbf4fd489bad9af751ed7e821aaf148ea76fb8974471983eabfb9", intel: "35cb7423fdc31834bd3cd91711747d929d2b227b5c3d75b22cef91e67a6d5e3e"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "57490869223ddd9266105455229ee727d97a8969249dec6de5b0fccc5c627321", intel: "d8f1fc2764ac640c89db2f75aa307f59b2cc376323f74ca3da5ac9d282de1874"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "809e130b00b8eb491637479757c6863ad5b2c8a23532199205cc0050657f60ee", intel: "284fa1ba3eeacd2109a8d639722ea529123565606885b075b056059146ac9cc1"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "2e829d9a5a1d6ee386ef04c856ea720a52ee7316e138b40592a4f11d77c538ca", intel: "66f4b3eab16fe6230071f3238f5c049b2df0073357ef985a6ad5026f12a8f8cb"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "975f1b2ab9b3ddf132dc456906975b010a937982a868df04f8b7aa0255ea62ae", intel: "c2a27bcdafba4bc16d5a67acbd41a46d86e29120e11263d3fea6c78a5273aa0d"
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
