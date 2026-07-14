cask "zed-i18n" do
  arch arm: "aarch64", intel: "x86_64"
  version "1.10.3,1"

  language "cs" do
    sha256 arm: "b5ec905bf0bd195018c6986a56cc46e995d7d5c5e5af74439b9d2288adb0e6ae", intel: "08b3ee564bd8f818e9043dca85ef5322e20a10e9a5688eb12ef209310c47d842"
    "cs-CZ"
  end
  language "de" do
    sha256 arm: "9e495256313e10ce3c3ed830ef1b11cbaaf0f538b54fcb16dd205eac0864d3d2", intel: "097fdd5e08a7e88041125c7d112492b86cc6136297ed57d1463dba43cc2d7245"
    "de-DE"
  end
  language "es" do
    sha256 arm: "9f04cb61f43a2dee15864c2a80087d04c1ef7b41575ea13dc57fcdfad6388efe", intel: "148387df7666bf73b55603d6da1798b53460f3893f384c90add37168aea97d36"
    "es-ES"
  end
  language "fr" do
    sha256 arm: "deb30442df26031a1810265fd147f7cbf9020ca9b078b80173e03887b4dcfafd", intel: "933f74be1cc952b26e9421efe7a5d11d466661cd9de95ac7b7fe971ddfb61c6c"
    "fr-FR"
  end
  language "it" do
    sha256 arm: "50d72b857f06915d14a87ad47aa38e3de7d97c2516b8f35d08677b74c434b9b4", intel: "9166057d7fd8f404884eee0704a4ca71ebdee5d7466095dc2d201d11382d4ea3"
    "it-IT"
  end
  language "ja" do
    sha256 arm: "6d64d72c1111d72cf0b2f2fe6e03295fc5c686462afa045edf531dc03dd93d78", intel: "2532fd874b35f734dd0b10db1890f2ad42d74079b6b7215993a146b34b4ac568"
    "ja-JP"
  end
  language "ko", default: true do
    sha256 arm: "e9731e6b340d6b5b2583297c02b0c7d735e82c4fb321c2e05c392f154251c374", intel: "45023a3214481f25facb5e62950f1624985dcc24115adc0a1af0fa4adc0c6e32"
    "ko-KR"
  end
  language "pl" do
    sha256 arm: "0f57c959760cdd11f0b6601099ef4e152d40baf21d9e6d7c8d5ee6cc829be1d4", intel: "13b4f4b56af6dbe230f357ed3e281d2ff1931e41384b16d3f4ad01322457d76b"
    "pl-PL"
  end
  language "pt", "BR" do
    sha256 arm: "ea8bf9f497333364045da7a59dfb001b5c31a95244d6caf89ae8c0ef140331bd", intel: "5f7ff0583948472f1ffb72bc3401e9677303a13a944cdc39a13891551262ad6c"
    "pt-BR"
  end
  language "ru" do
    sha256 arm: "e761ec51217413c047828cd01b3c56fb3022510e78c23d0ecefb1b470b4f7e8a", intel: "a04d2e5e6a5d39133ae9ea6ae61cd61d684e9fe7ccd6d1bf4b8b07d1eb2735ee"
    "ru-RU"
  end
  language "tr" do
    sha256 arm: "c9821b5dcaab014fb06c2b55636ded5f2acbef234e230dbb2dc75e959be52d25", intel: "d7e06a267581c4b215fe3080d2eb088b51a26c156e6d8a2d3e075758b6fa1c41"
    "tr-TR"
  end
  language "zh", "CN" do
    sha256 arm: "045f42cbb6195c3ef2e217c279728d1db152fee6f64c9870cec144c93d2a79e6", intel: "39d6a769b97b29712db15f82460d7533bc93833561d1c286e72288205563cb84"
    "zh-CN"
  end
  language "zh", "TW" do
    sha256 arm: "403fa7b2c80b38e435521fc5fc3d666b2c4216fd1660365a0d0629557e8d6505", intel: "5a610c5fc0bd70e8e414a1ddc570f62d868721dee72a37b30c5c86a4039192fa"
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
