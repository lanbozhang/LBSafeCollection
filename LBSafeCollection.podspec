#
# Be sure to run `pod lib lint LBSafeCollection.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LBSafeCollection'
  s.version          = '0.1.0'
  s.summary          = 'A Safe Collection Of Apis.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lanbozhang/LBSafeCollection'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lanbo_zhang' => 'lanbo_zhang@hotmail.com' }
  s.source           = { :git => 'https://github.com/lanbozhang/LBSafeCollection.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'LBSafeCollection/Classes/**/*'
  
  s.public_header_files = 'Pod/Classes/**/*.h'
end
