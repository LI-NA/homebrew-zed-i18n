cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.6.3,1"

  language "cs" do
    sha256 arm: "6a0b3e48c55d018e600f4345487f5ec085fb14fef8ff2177bb95a5a0e809943c", intel: "a7a43ee5fcffc5d00167d78247f70e6783f13496ca26223691b63002182f8e16"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "84886a2d41187d7a0ac64f38324c56dcc606435c783044f94fbca5856c96f5a5", intel: "72b441997cab5b9527f2af655af01314dedc284d5e547d77a2748266d209a013"
    "de-DE"
  end
  language "es" do
    sha256 arm: "8d8f77ae66dd86dffc4ec115963924e119ec1e9e45783cd15d37a56e4cf7c743", intel: "79b70664fe560029ffc9f62cba785038e47c0ba1a879bc3758d2532885370220"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "131db9b5face11523492c919aa7b6e82bc7640d5d858d539f12baac735fe6079", intel: "9685fdc64aef8cf0c8c17957073718cff46ac95be004e6c50ce847001ff97fd4"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "ace383f7885fdebf91054fb723db19d168a55c882e596e81b72ecdd9d4ce8ab1", intel: "4cb45cf17b3c55cb6d969d5367d0c0b07eb507056d6d075d21f8f3d14020b875"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "098877d2f24df094a4a3117ecb5dd15a203a9d8be2c4563184116e6a1411f588", intel: "faaac89573c6f6c5aee5f3a51316fe0de29066c1cc9aca4039b1e6e99ba92350"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "c4aa25c9eab7044fa1773015d9578776fb92637f4c0966d09ce4c809d9668686", intel: "12fefa387b549b8a497794da1264f506747e2c5e40acf72138d2103f401f5bd1"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "55390aa31069702ca42077cc0b539b686cc8e8a70a495509fa8338bd0ef95ba9", intel: "0014fc590993c1f916bd27a55698e77ee5ea3283a39185ecab1734851cb43f57"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "641f08371e5d23924b5eba87749d6db35dee31101044251f17307f10cf6fc62e", intel: "6419ec9b2525d0b45450c2e080bcb1fea74f93c35dc63c2aae9504a4b519d06d"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "2ba46ccc79af1fac37fe2ac4134da10ded272b385c50aa577ef33201663a6e30", intel: "fb6a128466de90969c53fc2999d67fe3c797b281daac5117bca54e03510f92ee"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "120dd8325acf7f3488f5abe4df800f18a34d22e5b7c127aaf845b03561f37202", intel: "0e96fa0c317c5f877a44c07dc583ac9637112f90de418c207bd0ccec5b056a7a"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "c58a28bb04f2b9e1cc786d95e413e89a601ba736326401ddf083b0ecc90b6462", intel: "a510198ace1071642d63c7dbd25708324e3905999cd4e86c87efd90ebef624b5"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "c8b11bff18e741ec842c15861c74b8a005f16a53ab905cd360258d96897f1bd0", intel: "5332c50bef8d1a2758181dbbee0f7751c5cebfe58983f7316a8da6faa8b23496"
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
