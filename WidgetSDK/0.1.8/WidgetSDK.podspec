
Pod::Spec.new do |s|
s.name = 'WidgetSDK'
s.version = '0.1.8'
s.summary = 'SportRadar WidgetSDK SDK.'
s.license = {'type'=>'Sportradar', 'file'=>'WidgetSDK-0.1.8/LICENSE.txt'}
s.authors = {'Mobile Development Team'=>'mobile-dev@sportradar.com'}
s.homepage = 'https://mdp.sportradar.com'
s.requires_arc = true
s.framework = 'SystemConfiguration','MobileCoreServices'
s.source = { :http => 'https://artifacts.mdp.sportradar.com/apple/native-widgets-core/f481338e/release/WidgetSDK-iOS-0.1.8.zip'}

s.platform = :ios, '10.0'
s.libraries = 'z'
s.vendored_frameworks  = 'WidgetSDK-0.1.8/WidgetSDK.framework'
s.dependency 'Alamofire', '5.4.0'
s.dependency 'CryptoSwift', '1.3.1'
s.dependency 'Kingfisher', '5.14.1'
s.dependency 'SnapKit', '5.0.0'

s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
        'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'x86_64',
        'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'x86_64'
    }
end

