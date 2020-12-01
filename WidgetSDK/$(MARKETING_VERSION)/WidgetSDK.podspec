
Pod::Spec.new do |s|
s.name = 'WidgetSDK'
s.version = '$(MARKETING_VERSION)'
s.summary = 'SportRadar WidgetSDK SDK.'
s.license = {'type'=>'Sportradar', 'file'=>'WidgetSDK-$(MARKETING_VERSION)/LICENSE.txt'}
s.authors = {'Mobile Development Team'=>'mobile-dev@sportradar.com'}
s.homepage = 'https://mdp.sportradar.com'
s.requires_arc = true
s.framework = 'SystemConfiguration','MobileCoreServices'
s.source = { :http => 'https://artifacts.mdp.sportradar.com/apple/native-widgets-ios/d3cabee0/release/WidgetSDK-iOS-$(MARKETING_VERSION).zip'}

s.platform = :ios, '10.0'
s.libraries = 'z'
s.vendored_frameworks  = 'WidgetSDK-$(MARKETING_VERSION)/WidgetSDK.framework'
s.dependency 'Alamofire', '5.2.1'
s.dependency 'Macaw', '0.9.7'
s.dependency 'CryptoSwift', '1.3.1'
s.dependency 'Kingfisher', '5.14.1'
s.dependency 'SnapKit', '5.0.0'
end

