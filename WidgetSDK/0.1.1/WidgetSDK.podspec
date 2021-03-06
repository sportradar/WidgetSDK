
Pod::Spec.new do |s|
s.name = 'WidgetSDK'
s.version = '0.1.1'
s.summary = 'SportRadar WidgetSDK SDK.'
s.license = {'type'=>'Sportradar', 'file'=>'WidgetSDK-0.1.1/LICENSE.txt'}
s.authors = {'Mobile Development Team'=>'mobile-dev@sportradar.com'}
s.homepage = 'https://mdp.sportradar.com'
s.requires_arc = true
s.framework = 'SystemConfiguration','MobileCoreServices'
s.source = { :http => 'https://artifacts.mdp.sportradar.com/apple/native-widgets-ios/eb5f679e/release/WidgetSDK-iOS-0.1.1.zip'}

s.platform = :ios, '10.0'
s.libraries = 'z'
s.vendored_frameworks  = 'WidgetSDK-0.1.1/WidgetSDK.framework'
s.dependency 'Alamofire', '5.2.1'
s.dependency 'Macaw', '0.9.6'
s.dependency 'CryptoSwift', '1.3.1'
s.dependency 'Kingfisher', '5.14.1'
end

