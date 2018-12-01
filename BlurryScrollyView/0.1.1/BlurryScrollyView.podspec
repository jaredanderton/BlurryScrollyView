#
# Be sure to run `pod lib lint BlurryScrollyView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BlurryScrollyView'
  s.version          = '0.1.1'
  s.summary          = 'A view that can blur an image while scrolling.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A view that can blur an image while scrolling. Optionally, it can perform a zoom for another cool effect.
                       DESC

  s.homepage         = 'https://github.com/jaredanderton/BlurryScrollyView.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jared Anderton' => 'jared@andertondev.com' }
  s.source           = { :git => 'https://github.com/jaredanderton/BlurryScrollyView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'BlurryScrollyView/Classes/**/*'
  s.swift_version = '4.2'
  
  # s.resource_bundles = {
  #   'BlurryScrollyView' => ['BlurryScrollyView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
