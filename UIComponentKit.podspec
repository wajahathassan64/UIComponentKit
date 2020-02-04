#
# Be sure to run `pod lib lint UIComponentKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'UIComponentKit'
    s.version          = '0.1.0'
    s.summary          = 'A short description of UIComponentKit.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    'This Pod is the more consize version of some of common UIKit components to makes the life of the developer easier, That one can create UI-Components like UILabel, UIImageView.etc. By just writing one line of code'
    DESC
    
    s.homepage         = 'https://github.com/wajahathassan64/UIComponentKit'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'wajahathassan64' => 'wajahat@digitify.com' }
    s.source           = { :git => 'https://github.com/wajahathassan64/UIComponentKit.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '11.4'
    
    s.source_files = 'Pods/Source/**/*'
    s.swift_version = '5.0'
    s.platforms = {
        "ios": "11.4"
    }
end

