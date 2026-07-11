cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.10.2,1"

  language "cs" do
    sha256 arm: "d59a175d80186ded5f1e87b30ff16a53cf246f6247f8afa5753abc77f78bf7f3", intel: "dc1253f35279753b4ba7e3589a23457632016af4362141080a738017c62bca7d"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "28eba751bbc7ee528c1e278c549bac37f354a95bb417e7c640b257f07048209e", intel: "8c3807a998903d1a68c02100779eb3c6883d391fa06d42b9ed9297030eb2aacf"
    "de-DE"
  end
  language "es" do
    sha256 arm: "f0a7473debb2a364bcf96916a6c05e275c79612414371923998f33f63f923ae0", intel: "610b0cb66d486bb772e38832fbd777c0217fd6583d4ba10b632c006712f5cbec"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "dd4c0de7cda15ccd8e6e13e98edec2329b6f138c164d5f9708498e3bb94e4c8c", intel: "6230bc8aa587da95a3a5a840a8fe69ab60e887d3967be8d1c4a567213e8e192c"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "4e76082f8ab4b294e9ca2bb96b79b0f0d5621170ce31963b8f48c71fab299ddb", intel: "d7377831cd402f0bbbccf7d787e2a2538e4e876817f38924f0c01b0ead28d008"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "459c5cd2c2deb80d4020b9c0938d85374d8bb97bc744650879cd7739630af48b", intel: "d43caffaa28a5ad24fb15ab84e1a407775a637f4e5d9e82367691dcdd84e07f9"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "cf8f7aa5f107b96be118edc9ad085d3826b623049592dbdb60a84953961f7422", intel: "ea147654084f8ca1d92d5b4cc93b01a5c6c01c0bc6432edae22dd3b5a6062bb2"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "b3699ca06b49f3fbb1d91e62f28253c9c812fcd528f2abe8552c74ea2ce1b369", intel: "627884409a372d7f9a29d48db5d17caf2b35e37dff9926bc403d7ae03536f97b"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "ad72c96464aed14f736a72afd67ad33aca13dfb67dd83aedb3ef1a275b78303e", intel: "5926b011618dd8b265a58e57a67d7172e0a7b845480305017f3cbd283411ed41"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "eb5300383ff7c7fc4d108d5277931134d7ec5cc4f557a1db3f7d6aa4788b736b", intel: "1972dc5e737bbb20d8eaf4092bbf3601b67283d03e744e5193034fe3f59f68db"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "9014faec0aa2623851c9620ea5a3efbb0a271e6b95f1f391215bb47dc4e4e9b7", intel: "cbf0480362d2bbe5246d173e3b59bb314373a20037b65b2fcb9d5fbc53d5a054"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "59c289e6330743ad65ba11c7cb10089dc05608d3752eda611a6acc13fc4b994a", intel: "deb645fa45b461fc1bada9ee875843e48f1240167ae04e7a3ecba7e46f487042"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "186072821e619650962e73b0ac55099332f4f8e50cf9ecdeede4c7057bc9070d", intel: "c89e17aa8261cd8bdc2a55aa03f817c88c059a9b36ae09da8bd1da14b8942e16"
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
