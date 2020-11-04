
Pod::Spec.new do |s|
s.name = 'WidgetSDK'
s.version = '0.1.5'
s.summary = 'SportRadar WidgetSDK SDK.'
s.license = {'type'=>'Sportradar', 'file'=>'WidgetSDK-0.1.5/LICENSE.txt'}
s.authors = {'Mobile Development Team'=>'mobile-dev@sportradar.com'}
s.homepage = 'https://mdp.sportradar.com'
s.requires_arc = true
s.framework = 'SystemConfiguration','MobileCoreServices'
s.source = { :http => 'https://artifacts.mdp.sportradar.com/apple/native-widgets-ios/9cf16126/release/WidgetSDK-iOS-0.1.5.zip'}

s.platform = :ios, '10.0'
s.libraries = 'z'
s.vendored_frameworks  = 'WidgetSDK-0.1.5/WidgetSDK.framework'
s.dependency 'Alamofire', '5.2.1'
s.dependency 'Macaw', '0.9.6'
s.dependency 'CryptoSwift', '1.3.1'
s.dependency 'Kingfisher', '5.14.1'
end

