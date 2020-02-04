#
# Be sure to run `pod lib lint UIComponentKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'UIComponentKit'
    s.version          = '0.1.1'
    s.summary          = 'UIComponentKit'
    
    s.description      = <<-DESC
      'This Pod is the more consize version of some of common UIKit components to makes the life of the developer easier, That one can create UI-Components like UILabel, UIImageView.etc. By just writing one line of code'
      DESC
    
    s.homepage         = 'https://github.com/wajahathassan64/WHCustomizeConstraint'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'wajahathassan64' => 'wajahathassan64@gmail.com' }
    s.source           = { :git => 'https://github.com/wajahathassan64/UIComponentKit.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '11.4'
    
    s.source_files = 'Source/**/*.swift'
    s.swift_version = '5.0'
    s.platforms = {
        "ios": "11.4"
    }
end

