cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.13.2,1"

  language "cs" do
    sha256 arm: "3f8fbe52e911a37bf953f7aa910496359b240d89c22f2dc620752bb4d35073bc", intel: "c67a9c7583efb1446a3f12c0d41106a59ae852468081c4409610fd3a1a101b8f"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "74ef3b085053d6322ac774b06fa6177ebdf8771f474a35fd2d96b0f16eec7b68", intel: "816df3904beebdc026520ca71bde69206e523017d1912af96ab86b2eb3ffb013"
    "de-DE"
  end
  language "es" do
    sha256 arm: "95699e10267040d2482ce51b4ad7179536d5728d23ac6a0324c9c04a9b87ffc9", intel: "b91f7835563b6efae95a3ab0729937b2ae2753906d60b4878377bc83f60920cd"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "197a1bd310ba8ea6d549e7b620413eaa474b6af79ba12aa6dde6dc33326d62f2", intel: "458bbec49f130299cba1c5ca16bd3f79ba233e7d55dcb5e0f5ffbba8e5e15b15"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "0f5ac543496cd1ddf28eccc9776f28df3f1b1335aeecd89a0b5720b6ee380bae", intel: "0114e5568b4687c62d47651ff96105878b5ee44f29b44d4b21ceb5fdb806c77b"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "bce9b96fc7839a70057d3f4fd5083d19fc04cffaaee1b143bf6b5482dc1c709d", intel: "421f1cded36526eaffb949556d4a68a18625ba408aade7cee81c8fe70bc5a2de"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "cf98a59a29da260e1d6885337e4e0ebb516bfd77bfa1b4f659480c0af319fe1a", intel: "7fcd2ad95aba90187b82a7a04781e9a8bb72823a5cfdc93f5e1f81c49e016894"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "fd51574ed9fecc10ec2ab6425e1a5b89f353d1c3600e381e04a82b1cd3d4ed2d", intel: "908e4750536a62fcc8b6b16580a85dff25f9e58d5a62898b4ffea6611b393a03"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "e02cec900f27bc2dbe37a20b63f7fca3fc0c6f27be1a153e6a7202bf1046c8c4", intel: "33e3cac7ed6941743013f3a0ee2a027bacca2d1e2b072183d30fdb541bf06a7e"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "3e93da5072240ee25d81b5b8919c0dde89a81a9791a18454b9bfc6f3268aeff0", intel: "6bfcb513ea1eb4ebac189e6127f04bfb542aade4dd812a86beee3e1e9436e2bc"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "5ab75293b29c8b80e0543dd81478822cb175efce29c1c8cbf7edb1b8bbdc3f32", intel: "4eb3161e2279eac8318387a220f9bb3700ce282435c03da788854a68f3d52900"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "ec1eabce94e346efe5edee5566e6e0efb1ea844c8393b95c192ec3e6631b4994", intel: "91d597bf9b994695dc561f4521f78d134ae8b8028cc4d1888bf00ca33a824a98"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "905b4ce0c3eaac79899235901b9a53df7673b7a894959637dc10695bb103ced7", intel: "4e7807807c0504d0e1bc28a78c9ae62e4b4f6b740fa32170b53fc77c8be6fb61"
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
