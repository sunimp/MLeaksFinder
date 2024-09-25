#
# Be sure to run `pod lib lint MLeaksFinder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MLeaksFinder'
  s.version          = '2.0.0'
  s.summary          = 'Find memory leaks in your iOS app at develop time.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.webullbroker.com:5253/stocks/MLeaksFinder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sun' => 'yangguang@webull.com' }
  s.source           = { :git => 'ssh://git@gitlab.webullbroker.com:5153/stocks/MLeaksFinder.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'

  s.source_files = 'Sources/MLeaksFinder/**/*'

end
