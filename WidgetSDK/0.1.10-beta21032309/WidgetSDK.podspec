
Pod::Spec.new do |s|
s.name = 'WidgetSDK'
s.version = '0.1.10-beta21032309'
s.summary = 'SportRadar WidgetSDK SDK.'
s.license = {'type'=>'Sportradar', 'file'=>'WidgetSDK-0.1.10-beta21032309/LICENSE.txt'}
s.authors = {'Mobile Development Team'=>'mobile-dev@sportradar.com'}
s.homepage = 'https://mdp.sportradar.com'
s.requires_arc = true
s.framework = 'SystemConfiguration','MobileCoreServices'
s.source = { :http => 'https://artifacts.mdp.sportradar.com/apple/native-widgets-core/cd515196/release/WidgetSDK-iOS-0.1.10-beta21032309.zip'}

s.platform = :ios, '10.0'
s.libraries = 'z'
s.vendored_frameworks  = 'WidgetSDK-0.1.10-beta21032309/WidgetSDK.xcframework'

s.dependency 'shared', '0.1.10-beta21032309'
end

