cask 'navicat-premium' do
  version '12.0.27'
  sha256 '97b1a87811077c5dd8a0cf174bd27bec3485c00cf9739fe7242413d42ecafe8e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20Premium",
          checkpoint: '3b9f209d6a1c2f08edd52dd7e88aadec6dd2575851ca9a3f9acf503108b28e9e'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
