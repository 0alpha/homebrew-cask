cask 'alfred' do
  version '3.6.1_910'
  sha256 'fdefdb35047e193e1d06f5a441f4aabd4b45b24fd43c63d223d8508ad11a131e'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  appcast 'https://www.alfredapp.com/app/update/general.xml',
          checkpoint: 'dd1cdfd7338d25e0ab3fb50e15ebf63e60080be406f1e4c455f99254927a84c9'
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates true
  accessibility_access true

  app "Alfred #{version.major}.app"

  uninstall quit:       'com.runningwithcrayons.Alfred-3',
            login_item: 'Alfred 3'

  zap trash: [
               '~/Library/Application Support/Alfred 3',
               '~/Library/Caches/com.runningwithcrayons.Alfred-3',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-3.plist',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences-3.plist',
               '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences-3.savedState',
             ]
end
