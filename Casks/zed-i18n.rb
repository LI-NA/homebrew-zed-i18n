cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.8.2,1"

  language "cs" do
    sha256 arm: "160831bd54250b851d2fd91d21ea2da31c18c3bff318ecd42a1cbc3fd0ae5f92", intel: "a700db71d1bd661717467f7db3f5d22ab4e6b0af1c6fc2a0bdf851191bddb41b"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "0569264844d94126da48a04249649d9008f6889addb9c9f5454dcf7fdb378dc0", intel: "0a87eee7cd2575f5a575efe7f1f227ebf16a2e5ed4a9c1c81e934cfeba83bbb7"
    "de-DE"
  end
  language "es" do
    sha256 arm: "dec9ba0bdcfc18556bfb6d2f83925a292220a92a8d6824e9dd793a1682ae6518", intel: "bb79b0cf51827046b398b14e8221550e3132f6b858a2e4d7f1443c65fa628edd"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "4959ca1fe2bf4577f0ac5f75a2b2a643b3206870c99e16accbb09a95c5c07913", intel: "07bbd999f8963e053f31fb1ff8450266fc3c087bdb3ee68559a506f367dbb6db"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "5490d13cc81d9f21e6439d3e93e8d0d26e3ca8aa74ac5a86032912d4d83659cb", intel: "162f14d5762ae50a138ff8daa928a9dc2762aebb45bbae255c423d2cf4ea681d"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "65dde9e02ae2f0475d7a120983dbdbeecce6f623ab89c2c890c45576b0b94491", intel: "79819f7f797552a764b5d0b58c7285b4ea5445ab336e7152ed01ee8cbed0d215"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "48df2f731c6d482ea70661448111d7f3e3a439da15aabde69812f3bbc96188ac", intel: "d9d90a1f9e7188693f58a4e2bba1bc20bf2f034877465ecf22cc12e19e053a04"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "7a5b2526b1ad6e078700bc37c55abca0216bcc0be7bc9c4d53e75d3673b6feef", intel: "e94b7ebf785f55bbb645e365e754bf5d6006fa330d4c0aeb0aa5ed975e1ea9fb"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "16992ce1136507998937ed2ad0c4f60d252c12ce4a06829df04992eea96d6dcd", intel: "f24c185045ddbab087a025842e551b0c69351fbe7543241dd46f7f69b7695330"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "1d2a3b33d59c36e464edc2e4a812acbf27b8697d35efd3d51f58375c59cb6a2b", intel: "e97b7d858072386e31897bb3dbc82ed86676345dc686ff2c08650de6cf8d00a9"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "32c5da731e9dd314da305008c2b3866eb8d5c848a5edb218b8758e78349327bf", intel: "b7b6e348ca21ef4bc301a91ebcff73e5dc6cffb700bf53364c975f4131f35192"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "b95add33b8b5c534d4d6003f789f41550c031d9bc5bc16a56a8455303a86bdea", intel: "df5a4bcd4b143f5e573d8d6c22600a1bb615e66ae3145def6310f2f429f67a1f"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "017c00b864949b85b80c2efc934a7689a400e118c9e0df4b9d6667a6e720a1a1", intel: "36cf8fa60ba5560d6d6c434f94dae3258072a918dea0724717cf3c33c79b3515"
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
