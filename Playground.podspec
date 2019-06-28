#
# Be sure to run `pod lib lint SyncerPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Playground'
  s.version          = '0.0.1'
  s.summary          = 'Playground contains the tokens and component for uob design system'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Playground has tokens and components for uob design system"

  s.homepage          = 'https://github.com/mukeshaleph67/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vermamukesh' => 'mukesh@aleph-labs.com' }
  s.source           = { :git => 'https://github.com/mukeshaleph67/Framework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'


  s.ios.vendored_frameworks = 'Playground.framework'
  
   s.resource_bundles = {
     'Playground' => ['Assets/*.ttf']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit','Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
