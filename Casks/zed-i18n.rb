cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.4.2,1"

  language "cs" do
    sha256 arm: "30f9896a380a15cbddddf88cc0530025be1d066cd0172da130c8397ab1d948cf", intel: "f937c683e2f994e0139707c864766ad5711c09f803fe5f4bd90d73dda4f013d2"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "3709c5ad87178c4b2d39f6ca025a61d6c24cd59f80757a881bd7ebd193a9e66c", intel: "f8077a3e5b81de856dc24f6a37a3edfafba39839cd0543062399ad52a5d94208"
    "de-DE"
  end
  language "es" do
    sha256 arm: "f9d6a66f182d61cea99f55b0325ffae281b1dd76259db40c928c79bb63e08c3f", intel: "8a3671ce60f723094e40a5900830e87719845111c45ce4f56d318ab7c86fa65f"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "3492d82a4a663cd320b4b8b9338e62bd9ed19323526085bdb3c6cde5fff1f956", intel: "1b46ac67d87dce4f6eee1b60dc777a8a3423cad0724aaa3f345eda66419796f8"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "314c9cb9ae8025e30976289c2a187b4de29872081b3bed22312d843ff70ad5e0", intel: "ee492dc1a5a41bcbb514813ab26722a1fb4d59d7f5f9fc125589a3a9a6283a94"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "b5f3772e8afb7e61a170bda99ee6e66bdeb64e493eefa3fc539da5522c276d08", intel: "9d804cca8d140177b133b05ee27af9185b9c92082f3ca87d4efc9ad57b98a3bc"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "295f03ed783661f922f0b0f4dcc9bada397dc8dce4a75f019fc6ea948d3c1400", intel: "f80d7e26b791102f776edf33d53bd31fbc0e5f61548bf0d1d6388d7f0b8df440"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "991326ff57df293543086c18a1c6eb21da819ac3bf1853a559a83f9c88b2caec", intel: "99288df15c061d56d24d8d6aa3d7590037d3e39d383514b007180341f3096758"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "c8b0d4e881acfcefd6bf28c6a4cabcde2f2b6aee6f7ab6dfef8a166843d3c4c2", intel: "c5e19c80f468f2939453404dd4fa9039e4c3b2c4b4598a21e336d00833ca7791"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "432852b0ab103d3466aded2d538294cf5e193bb585c0231becfa4f8dd9500f1d", intel: "2090ea7862b788c3a86404d46b5d8dbc8271528936038de3a33b5f0d9599c5f9"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "4a5ca63e6a6789de0f1be8ac28d519787bbe35ceaf8a29e831e8ce0630ea655d", intel: "d6aa8f3b76a219ce3cfa2f982717287527f4753adbea8cd10467a8128aedc0e3"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "da2bcc7f056cb5001e558550257112029f5305c3a98d68cd20ffea0c6c8bb7ee", intel: "d987ea1d553ff9b327df5c5b3e75b506234540c22a0c9599e4578d153a79dd46"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "4620e13b996aeaffa970355fa8cb05502efd3ea35cfdee2b1b6f344fce501c53", intel: "7c7190421962e3f0ca9fd281742c15657cdd865f83cb4c996896a13a3f581210"
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
