
Pod::Spec.new do |s|
s.name = 'WidgetSDK'
s.version = '0.1.9'
s.summary = 'SportRadar WidgetSDK SDK.'
s.license = {'type'=>'Sportradar', 'file'=>'WidgetSDK-0.1.9/LICENSE.txt'}
s.authors = {'Mobile Development Team'=>'mobile-dev@sportradar.com'}
s.homepage = 'https://mdp.sportradar.com'
s.requires_arc = true
s.framework = 'SystemConfiguration','MobileCoreServices'
s.source = { :http => 'https://artifacts.mdp.sportradar.com/apple/native-widgets-core/887bf939/release/WidgetSDK-iOS-0.1.9.zip'}

s.platform = :ios, '10.0'
s.libraries = 'z'
s.vendored_frameworks  = 'WidgetSDK-0.1.9/WidgetSDK.framework'

s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
        'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'x86_64',
        'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'x86_64'
    }
end

