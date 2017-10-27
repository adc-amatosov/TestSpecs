#
# Be sure to run `pod lib lint TestSpecs.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestSpecs'
  s.version          = '0.1.0'
  s.summary          = 'A test for TestSpecs.'

  s.homepage         = 'https://github.com/anton-matosov/TestSpecs'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anton-matosov' => 'amatosov.ctr@auction.com' }
  s.source           = { :git => 'https://github.com/anton-matosov/TestSpecs.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.ios.source_files = 'TestSpecs/Classes/**/*'
  s.ios.dependency "ReactiveCocoa"
  s.ios.frameworks = "Accelerate"

  s.watchos.deployment_target = '4.0'
  s.watchos.source_files = 'TestSpecs/Watch/**/*'
  s.watchos.dependency "ReactiveCocoa"

  s.test_spec "Tests" do |ts|
    ts.ios.source_files = "Tests/**/*.{h,m,mm,swift}"

    ts.ios.dependency "Specta"
    ts.ios.dependency "Expecta"

    ts.frameworks = "CoreTelephony"
  end

end
