cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.11.3,1"

  language "cs" do
    sha256 arm: "ba693a1354ea895cb38190c86c11445a85d2503703156ccaa2921acb4393c270", intel: "0d4dcb34422c16718371be43eed4ddc233bc4c9b1820091486d543ea41c99d28"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "5253dec94158c3b7c259127f0b53e789dfd04e2dc6e0dabd4cc79b3c75b8b90b", intel: "68865b75b4979c1ebae7b995ff3351a9257c3d337f69dc40f765815f8a2ed4d0"
    "de-DE"
  end
  language "es" do
    sha256 arm: "5e0f2b5762724e3891eb3bb5286c947ba57af569e2df870205b03c844a9c9af4", intel: "200dffa6a714c23ad7bc8eacdcdfe1d5d6ca41e018e32a0838e0c5e3e9443393"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "09c1fd9bef84885c568cf4195f8f6239f7fb8d5df24dd6a3f410b140e912053d", intel: "71ad86a91b41e4d92aa2300ee28dc6549bc8dea8d8e228b5252f4a1a55d33ebb"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "52da5a6fe04e2c7ca9439700fa100afb46fda212a3576c64942b76b6a480fb75", intel: "ecae4c6400dadccc1021d8691e782b3051ed8f79c3b0c4a1b885b246d6b157f9"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "fb53bff105173a49de51918e7b675d569f57172d34fdddb19d5ea0ad8017b4a1", intel: "8d91140a6b59420040c517eee8fc2d965f8cb0f2dbba16abbf15b770e3e27413"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "03ca97d72a44aa04e6b2eb383f59a13e0430ee21d2cb4a9611f26c8228d6f439", intel: "ee807d0edfe3fcfa1e61bc5cd526f2d8202bf635370c2074c1cdc2f6fae6b2e9"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "b7fad5f12b345071082af5f7ad066ecfee3ae9e0587f8dec18616d7b7171f457", intel: "343bda4bf6d1e0185816c11d4d2087acd0a0e762211a98bfdbb195193ae97bfa"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "d9cb56fbabc7b3d517cbce6d12c3324c225b7c56061689d0a585a8ecc92f4252", intel: "711b5a8193934fd135d00b1f49a32f55088e2da49ddcb3c8f70433b761956151"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "b288c1209d430c7946c89e8d7ebda69d7eaa704beb0283004544e0c13816ad07", intel: "665e8810386b5648320a84441473827d4f0f5bd98f732c27d2576d36666fc0a8"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "f450b9e028184ec9bb350c2df62c4e7caed7541cc4f395dd2f00c2a49c58c79a", intel: "140d0a318fe6c33d16450c8dd9e4bb32e1373f22cf5bae8b2e723005f6b61ce1"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "e59c567d071d993fd0aef2de979e1c88cc8f51c71b2770f705e8e3bb93e46c57", intel: "c48de44a8f2f6833ad57ae933b7058af0eb504ebc201cb93e4ef81239f67c8e2"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "9a8cebef3fd2fc32eb2256b28b7eab006b613e6634bf5322f18a7c8c7418b040", intel: "82aa0ef19dd8a4528868815bda33495af34dd378f4c1957167e1b1c53f28cc94"
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
