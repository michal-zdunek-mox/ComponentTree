project 'ComponentTree.xcodeproj'
platform :ios, '11.0'

flipperkit_version = '0.62.0'

target 'ComponentTree' do
  # It is likely that you'll only want to include Flipper in debug builds,
  # in which case you add the `:configuration` directive:
  pod 'FlipperKit', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/FlipperKitLayoutComponentKitSupport', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/SKIOSNetworkPlugin', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/FlipperKitUserDefaultsPlugin', '~>' + flipperkit_version, :configuration => 'Debug'
  # ...unfortunately at this time that means you'll need to explicitly mark
  # transitive dependencies as being for debug build only as well:
  pod 'Flipper-DoubleConversion', :configuration => 'Debug'
  pod 'Flipper-Folly', :configuration => 'Debug'
  pod 'Flipper-Glog', :configuration => 'Debug'
  pod 'Flipper-PeerTalk', :configuration => 'Debug'
  pod 'CocoaLibEvent', :configuration => 'Debug'
  pod 'boost-for-react-native', :configuration => 'Debug'
  pod 'OpenSSL-Universal', :configuration => 'Debug'
  pod 'CocoaAsyncSocket', :configuration => 'Debug'

  target 'ComponentTreeTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ComponentTreeUITests' do
    # Pods for testing
  end

end
