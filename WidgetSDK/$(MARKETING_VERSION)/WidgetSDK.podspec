
Pod::Spec.new do |s|
s.name = 'WidgetSDK'
s.version = '$(MARKETING_VERSION)'
s.summary = 'SportRadar WidgetSDK SDK.'
s.license = {'type'=>'Sportradar', 'file'=>'WidgetSDK-$(MARKETING_VERSION)/LICENSE.txt'}
s.authors = {'Mobile Development Team'=>'mobile-dev@sportradar.com'}
s.homepage = 'https://mdp.sportradar.com'
s.requires_arc = true
s.framework = 'SystemConfiguration','MobileCoreServices'
s.source = { :http => 'https://artifacts.mdp.sportradar.com/apple/native-widgets-ios/9892820c/release/WidgetSDK-iOS-$(MARKETING_VERSION).zip'}

s.platform = :ios, '10.0'
s.libraries = 'z'
s.vendored_frameworks  = 'WidgetSDK-$(MARKETING_VERSION)/WidgetSDK.framework'
s.dependency 'Alamofire', '5.0'
s.dependency 'Macaw', '0.9.6'
s.dependency 'CryptoSwift', '1.0'
s.dependency 'Kingfisher', '5.0'
end

