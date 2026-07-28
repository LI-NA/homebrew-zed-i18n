cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.12.1,1"

  language "cs" do
    sha256 arm: "14263a77265abc5f5b5985c5a1516a217ae27bab1bf2c151103bda26218012b4", intel: "6961cabbd65cbc555694fee7fe1dc9816994050e51c892af9bbfa0190f564ea9"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "772e32c37fcfac661b900632479c4c490032cda30ac4a17cde246d8642066b23", intel: "9b3b3f0ab25414b841d6d00e4b13abd86df71bbc991e315b15d7616bfbe84f7e"
    "de-DE"
  end
  language "es" do
    sha256 arm: "a3c6f84a4f8281613d1c6417a08a354f512920d29db7597592158b72fe806699", intel: "dc9823d5a703513e7abb8a56da23d20c43b979544affc7437855578259117486"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "770b0ef7adfc7a7bf308190eff28665156b7cd61eee3698635e3cf1dd0d902d7", intel: "301b12645e0b1f8ccadfbe12505d3eb7065f47f4b294a4c2ff31a38955fb1b11"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "ffc247764c1b11f77a191e210700a7fdc5d51d06702b2be77b87663d9c074026", intel: "a76d23310c1f7d63cc36f1829ff6341ff47077d50a6ad62921f5f08a23331824"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "1af7567d776c2862f039b08526ffbae252e9d3cfc363bfbf24ac7240764402b2", intel: "ae29a17ed5e5c69614a866929a88b6520aa79f5fd5fb686889e182c89cecc670"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "ee3841d155c92eba9146fb868fe8ed2bf17c8c3447702dbce61980cb0be1f362", intel: "f81108ce357e88f1aecfeb9cdfb2f6ebf64c95b5bdfda563267b92b77ad4357d"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "3c8b231c2a61709f7e6ea7a1bb9de258561dcc336eef89a62336fa0e271736c6", intel: "bdb6d926f27a37c790e9dfc6cc560a54986833748a50a0cceaed814e04e6b442"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "be3630bae582dbb40e86e3fa0f8e34ff1cf88db0df0912341ae1c8ee7a06223f", intel: "0b9d5d4b209614c376d85ca93323e67e39c4b783b9112cb6429bdc79b6f89847"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "668d8086b10d8606682f0696aa1c5248d9432811e7e3044bd35ebcd42e6bb095", intel: "471de8ef7a28f367b5bf8f6efee72a5e2079e3ea1f279913c0419c2098c341a4"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "a82369c7587b6a62a49a87db3dd8d1ab96e3942e31a4f43eaa90666920910fb6", intel: "5ee0da20768de128bf5e81a9bcdaf87020df8a02460ce7a6e6940229607fb674"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "41732c0aa8b7d1d0a7a2b92df938877b317ebca6f81e030447abe14195ecb9bf", intel: "41aeac91c5cdac6841202b1ff2458c1cd1c9d293f5c6258b444e84ee4e1c9147"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "047dc512353fd7eae6b122bb17d075bd754426e9b45b92cc363dddf9fe028fd0", intel: "6ae8308745e6437210e3dc4c18e0bcdd1ad451e678c8794f9fd8cc1fb3df22e1"
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
