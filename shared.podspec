
Pod::Spec.new do |s|
s.name = 'shared'
s.version = '0.1.10-beta21032309'
s.summary = 'SportRadar shared SDK.'
s.license = {'type'=>'Sportradar', 'file'=>'shared-0.1.10-beta21032309/LICENSE.txt'}
s.authors = {'Mobile Development Team'=>'mobile-dev@sportradar.com'}
s.homepage = 'https://mdp.sportradar.com'
s.requires_arc = true
s.framework = 'SystemConfiguration','MobileCoreServices'
s.source = { :http => 'https://artifacts.mdp.sportradar.com/apple/native-widgets-core/cd515196/release/shared-iOS-0.1.10-beta21032309.zip'}

s.platform = :ios, '10.0'
s.libraries = 'z'
s.vendored_frameworks  = 'shared-0.1.10-beta21032309/shared.framework'

s.dependency 'Amplitude'
end

