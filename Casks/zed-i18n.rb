cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.5.4,1"

  language "cs" do
    sha256 arm: "8482086d3f0b5b98c4c77eea9792d1c14ff72180e0b73ffb1c41a0c7da754d3e", intel: "d0fc561f15c19e74c3b86721f5a409e88bb72617b57555b70a63c9cad0184ea9"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "350579c5a68c7052173306e08be73861034925d3ab2d4689c85a06cae462f72e", intel: "6ececf99aef6481f45020641f0c3aa2b8e797a8fe10a16a57727eeb28db1639d"
    "de-DE"
  end
  language "es" do
    sha256 arm: "cfff12d4e5085c982279476f2bab20b34ffd738f74652f464e258af14aabdb9d", intel: "588609cf6fdaa470f583e576aa311cdea28b5dfba5d837cddc3d6c82ca887600"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "0be85a2cd7ee793ee7c64d718ae450914c8ab737d0d03db0bf1b48c5904da21d", intel: "7627869440db2d5f5cd269562950dcce67bcbd17a032db55ff5618945c3721b6"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "85ff6fc491605ea7603ee08f267ee7142fc4c593786a7967e190079e699b26f5", intel: "e9bf11dc51cd7ad1a6ddbd7c5d52bc550f5c66aca4bf244b4984019521fa99f4"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "66a64fa241971bd82d03d5d7a840ffd8401b2f859e93f13fe9b4e04cd55cd669", intel: "39d6f9e50514bac3dba6a03df3693ac486a1bbbe14546cac15ca89b04fee1994"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "6f63368b803811018c1c5bb80344e67bba9c3ec36badc2b69e2e4cc35c810824", intel: "fc7c219156828a64967ede41bdd451996be6ed4a6b341ca17bf2a820fb13bd4c"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "fb3036d7adb1767257c9b10eb72730c4af363f99fcd1649ebdbf4a331888e430", intel: "930e4f390d7891bbe8944eeaf952b7da72a1aa34af4587a4b92c61d721cecfbb"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "dbf80907ae7878959ac9db6092c1278047156d1a9f2b48511182ca5ac7a2b89a", intel: "02efb2618f918d863ce41bf735fc41e21cfa0b42310637a467133a4724957b23"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "5bd335ec4e22b8a1a4270beb524d9f47458074aca8a6b8d1d206b1496dad0c7c", intel: "104263da2dc4260c13344780675807741ac1869eaf2addb9f1fb60d910e72cc2"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "e9be4c95ccf667d72321827c4f14b07fbe571fff938c5900492225a911775c7e", intel: "069c2813dd130801b0ad6ce202a89f8e69e6eaf33fb81e50a68ba1a93441df74"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "8da7953c4a243bfe075343c83f2678e51392148dfc2fae771fe26aae3eca849d", intel: "913f4f772f4084279e94ff3b979450fb647ac95e24bd344da9e9c8c285b0b1d5"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "566bd2212fd8e0f5432e5d61aea0b2de73ed66f33becb4868b31a01b5fd26f32", intel: "0edeea91fb4d31cc75bc8c293c8e837d9434d3cc0be792b0c8a6e53e21493b62"
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
