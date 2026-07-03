cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.9.0,1"

  language "cs" do
    sha256 arm: "2ddab30a05363a17596b610e81c36026e680c6e48bb83131a062e4977ac01144", intel: "0683bcd4fd319148b3bf4307b929966e132e25558913e3a2ea54f8db127b56b5"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "42e331be9b3bf8e5f3abc2f40146e8e49a22eb8e8bf2f419d9358b49572bc008", intel: "6cbc86fc9138570e9df3427a28a941c7eeab0217985991c3a472c892fe0a7088"
    "de-DE"
  end
  language "es" do
    sha256 arm: "885dfb31acc8b38094a38a91183d6cc19f673c24ca562f6e276203ca3490d326", intel: "013b933b1f834e7ae1f674754fdb2bf0459cce9712130521d00152227ece7807"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "fcc7114e0ae21deab3370454f61f22662d5459ce34b501e82f7af7e85ce7bb4c", intel: "97016311bd4d0e282ec1c0ef293748217aba7790d04938c57484d965120141b9"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "09101db9e314a66b589f30bf4f65b3c8e9f336a9da99c4ac3e5621949acc7506", intel: "3f8e6ce982e8de457bddc53ac56d989351ed5928e60a4ccd81af126d13f1e88d"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "919e37b73a93a377ce698cece45356a555cc84fe7cd0211ea84edf74efcdcb06", intel: "e823526dcc36e32345e309419cbdcd6de36f9234ec473a9f96b8607a64898179"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "b4e5772d4792d9d0334038f65d8f680681030d48c2ce74d39a62f46e308cc0f7", intel: "2158a0804a0740f055555bba7c31a953913731d3236f59adc80fa4f36c7d31ea"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "c5f818af4a637ae448fd89e191f23db0334ae3017f3b7bb56f35cd5b2e8edee9", intel: "9203e418d819e8a3399f9ee1cf397ae9fba7ed4258998f380fa5b050827f044f"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "79ab252fb600c7db6746bdd74abe848ca58675576748c6809a06f9a519b29270", intel: "3fbd4cee3441f750d9d51475d856d7dd43788f96ad717b4da0cbb23d01d75aa3"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "c505011c3ae6150bc8ba554f34c3ae8d486d1229e70725efd92777491e487072", intel: "209e0a767d4d08425573802df8bbb5dc05e379f93aecb8c50281620ffc239d20"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "71d8315e153b01dd75cca8a394ebaa588037df5bb985ab09179ffc9d5bcdbe8b", intel: "6bf87bbe4bd6b7bee0c681f2bb771fd9a3c68651a377efbcb5911ca3168ee62a"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "3b63259b5b25f1010af2b4d0aa97c2e57068a0472aaa6c87b224d0ff0958e7b5", intel: "f5ecf8aa302c52018905a934228121fb1747264b8dd3ec49b735e43924d701b2"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "d42ba2a579e2a4148b0aafc23f6c1c48eb340792a137c8b8191ccb0226acb7bb", intel: "388a726db21fd1d10062bd2ee48adf07f2020f9dd6bf7eb058d438c43b77cee3"
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
