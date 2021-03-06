cask 'navicat-premium-essentials' do
  version '12.0.27'
  sha256 '23c5f235034bb0462a427e41b02b5ada91c0622c1fd95e888d8f87ae3b6fb951'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials",
          checkpoint: 'bfd18dd1f518082f8ac4604b3b31994ad8f83d5ac5654993e1865de003a8f602'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
