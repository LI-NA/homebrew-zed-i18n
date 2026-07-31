cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.13.1,1"

  language "cs" do
    sha256 arm: "098ee6afcf324bdd953850d08b06b8d6448829e990860b1d28fa4813f90c2be1", intel: "893cdfea1b1803eed3699cafcf9b4765933216dcecd72ec5ef2cff7e543ddd26"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "84bfd50b793660c67195b5b03a25cb1237109e3896c83b9a9c6df92f945c94cd", intel: "e76176f070c753e0700f6ecc67fa55fdf8ce08809000f62fc60fec80e9621cf0"
    "de-DE"
  end
  language "es" do
    sha256 arm: "0f4e4efaab07d9ad48034fee67c96f3bc6b23be2263920017d416e55a2816f44", intel: "5fa771234020b7e45e98f13564e7302aa010a02ef48cf73ed5e2b35502152bf6"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "3cf954c74e7b83190c8d051062bb0bb9109cc8412fa3e13555e9f31672e7a6df", intel: "ebe21ddac28e59e939c9bdd6a46db62a77185b79a2e930b6dde909f24a6f7acd"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "ecbec2db53005f9d1f1b218a6f16aee74804a93982bf7db4d4d3cbab160a112e", intel: "79b3fbfddc94e3ac7edfa7ab727129a2ee7b12525f8eafcde9bea48cbb83c8f0"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "4e22cd28dcd4aeb84cfd2585ffff64fb2e27287f8cd298c4ae08a362c47c6a8c", intel: "7eb97c4e5119232cf3b7fe734989d42d8fdd0e8b9c371b3050153f66ed942ca0"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "93b64543f91e3cf85924ada265664945c4538c939926527f044af21256a6bccc", intel: "a173afc81db9dd5ced4d1e650efd186277c9f8462ad688a7ee79c93052fa73cd"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "66e24655ce9cbcf367691484bfff2235330af8fa5ee2db2ec90b352f210ed5d8", intel: "440fd52e39f9a9f7eeb57afb13c6c1f1e6fdeb266482b540e839479d2dff5338"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "a03af51dd4177c79b316c6a279bfd4003000aeaee34cef017a2656226acc4ea1", intel: "b04a08bafce02a537a6a5246bb5fd8294e46bf7f61f0aeb31e56e2998fce1d5d"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "85340fcf1cfbe9a125a2e2eb7a5287f2463f02434fd748d094ed6bf86e8a664e", intel: "a7ed06aca0f956c85fc55e51a2a613259f79fc5fdc773fdcfa1dd119cd68a795"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "930d67625ad9a2561ed341048f945676953ab640f17e80acf270fe5ea664db5e", intel: "78c7522c7efa4e28aa1f0987d30aeb41b647f0935b62e7da583f29b769720c25"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "5f29a3da4a28e6089c224336a78563f90166d147abfc6e0fa6536e1cdee7f3e5", intel: "9aea601248921ce55629a1b0ccdeec929eb383a47611f30690bcd89513fb8024"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "503a9dd8a26245dc8bb09c10178aa20a2e6424a82049cbda75a843e2bb498483", intel: "32dc98e7b77bac185c7b03e7261d2b808c4b21541cf8485b167aba30d8076e0d"
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
