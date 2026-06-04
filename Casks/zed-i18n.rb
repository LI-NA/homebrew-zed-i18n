cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.5.3,1"

  language "cs" do
    sha256 arm: "045cecbfdf22537ddc251ee72f978ef9f1fd4b9b80c5771bebaf74d7afa4f002", intel: "0f61acc2f566c75239c7ced413aea5808429a2a4965b68d462a04f571f318650"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "6e1d1be79993950c5ccabc71e5e46d718d5fa8c6350b35860b719f261b3f41d9", intel: "3a9174e430d6dc4d5bed36a132fa262003384df73f24369a73e7e9dfe6a65ede"
    "de-DE"
  end
  language "es" do
    sha256 arm: "6f08ad50cfb0c30c11ac9ce2a37a754eee3b2633960ced38e7ecae2390afafbd", intel: "8dea5168f5e9508ecdd6f00e99464ec9d2341377c5029cc8fcf7d9c9d5895887"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "572cc7e735cf18fa57025c40c6708b2fd55b1ab1a1ff0e58401db10b402d5fbd", intel: "ae6096414115cbb464c4a0f15c739a6ad0f29593b83b7c39ae159323f984e05a"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "b07346070a5222068a2a1a99b3e2278047d857fce3e7c02cd6ffd68ea48a29a1", intel: "33366aff5d5da9bfc9552758c88d4804e8d5624c4d80bc2e35f065de0661b378"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "0fafa483a300631126b798e20288316fc5a24230c65d757e9a189a00800a1ea4", intel: "404d3435592e79ab126f3606cfede9bce588082610a08a9f897c83d3b8b753c0"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "93b51db6e1b5f2015e086fb60be749643ddcde8502b77f7510a57d2db40b8f9f", intel: "21df8cd1fc7c2c923c4f985fdfda81a80c600f927e367622ed94c9f665b200a3"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "d4609f86d1fb4aaa7933585788e908b07e6519000037be3b5512942c527ed137", intel: "a232eab16e53d989d7f4ec86f04eb9f4a7339a8139a2b4321951cb114007c666"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "255707933fe0c53075f384cc43eb16d52eab525cc3f451f0de5c916d4b2784b4", intel: "66f285c370ae41aac6cc4cf80307b308cfde06e700bdcc6bd4c2947eb6b3f835"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "09b843283b37e2fe5a510fea8e583e89ad287ff4346ecea318f4d5d9bcf1deb0", intel: "2f4ee06d73ce61cfd2872b16798df27e469e7e8b66a913bcf4cc02166cebc835"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "3138c592cc7001d9d7aa22dffb8f29f93142c4e4a96183d02515274060130257", intel: "a5df745d82ab20aaf160afdb9b1c29da205c9b24a61483a70745792a72745097"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "2a2b576e2de63990ca81eb5d65109915b4514061d3779773e35b765ed5beb22b", intel: "a3ebdc375cd95bc35fb5142ae122076446b9ac91eb7659724389d3a4c840c1ab"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "428a0d6d0a61a1071293bcf06971c961fd707da8d76596a54c55dd54b845078e", intel: "f37a80210427f3af3492f5e19b59792ad48d3a8710fca3612a5e91e6508c3f22"
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
