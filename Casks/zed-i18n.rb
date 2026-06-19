cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.7.2,1"

  language "cs" do
    sha256 arm: "efe53c2b83c0714bb088e43115edee4d48c8580297fb5c5f076c65938c450120", intel: "fe961398264dd4a6005da37d3c86c0d111134da8492be3169a46da9c8ea71bbe"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "a68614de4a7db8041595991ad39a49f51d92c509d908ca8fe9243cb7e34a66cb", intel: "b994cd100d601c0ef2964d392352080d72b18f6e040c25766042ab3f755c7a0d"
    "de-DE"
  end
  language "es" do
    sha256 arm: "f7e0cb817ddd1d98bcd57fbef36a15129f4ff5e390226e2711484433dd27a60d", intel: "0b29aa5a5a70f13949563d5bb274331c50b733ba3922c524a19bb6a46f46c336"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "056b0a427d32530b5123228c9223586fdb414972a440e800904f36b47e1d3d95", intel: "7d4c952c9482131c5935b1b635d6a55a2ff7551c46a4346889e9067245899882"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "23355354ea9d4bd71eed32c37f54b3b9328a49aa22ea5003f4762da6663b623e", intel: "a05ed414ae94e6365303f331ff75355cfc6f57a7dc11c23ed6ad9924cc36eebb"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "c32ada4fa2c290c15031fbfbd7295c2991f7d608f1e61d4479d3e3cb19e270ed", intel: "a789c73bad9b50edb45396637266d058005c8e11b7b6be76f330d2392d94aa7d"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "d23fa87804bcebe3d648f6eb3e4f39ffef4f9dd36c9c6ffeef25586f0eb00f1f", intel: "8fa479bfd622c2c5683e4814572cad7a028c5bd81c2e14fce6d2686981aa5a82"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "9f9083f442093248bc9bed4fde374c0588a8914fabe772eb17f939ea63464efc", intel: "1bd4062168505c4b4170176335304ea1265aa237de1b9270699083ec255b4443"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "c2b236b132ab9f7926c0de23e1d5a0c9ed5dff2c67a1d5c9581206151b91a4fb", intel: "b0cce11fb254970bf3475714ee4ffe3bb396b4c6ea5be0ea18771dfb23cec5c2"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "0b7f1722b2fde409b974c93c1db2fb7da0d24ae49059430a6c25a92c2a9c69c0", intel: "6ccb24009b6a219e3e3eaaec01c8e5c76272e3bf6014b0bb80aaf82025cb9881"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "50dedd4cab0faa344b2038ab913d60dfe8d2c8f0d505de2ead032691ad636346", intel: "96e90af0e285b50f6bd09d41fac090aa9579b5e95585f7725f4a2936502486e0"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "06873d3138b0e14e0b9fb8158d9ee1fbb3eee211cf7a1094a380c0bb69ad9bed", intel: "b4a03b84a6cecfaba4e695eaa1230e8792d27fbb8cd088a8971f2eb7ee175eea"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "1d955f586694f942ff20e4075ff436b03fa4d163b0c38eb3ce427700c30ab125", intel: "f0edc7ac4a0ce3eebfdf3baede849a226c0d877d41ac6f47429a50f7d89c0dcb"
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
