#
# Be sure to run `pod lib lint TBTResourcesPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTResourcesPod'
  s.version          = '0.1.0'
  s.summary          = 'TBT 资源私有库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  TBT 图片、文件私有库
                       DESC

  s.homepage         = 'https://github.com/RainyofSun/TBTResourcesPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RainyofSun' => '159322316lr@#' }
  s.source           = { :git => 'https://github.com/RainyofSun/TBTResourcesPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TBTResourcesPod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TBTResourcesPod' => ['TBTResourcesPod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
