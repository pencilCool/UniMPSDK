#
# Be sure to run `pod lib lint UniMPSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UniMPSDK'
  s.version          = "3.6.4"
  s.summary          = 'A short description of UniMPSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/pencilCool/UniMPSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pencilCool' => 'yhtangcoder@gmail.com' }
  s.source           = { :git => 'https://github.com/pencilCool/UniMPSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.requires_arc  = true
  s.platform      = :ios, '11.0'
  # s.static_framework = true
  # s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.frameworks = "JavaScriptCore", "CoreMedia", "MediaPlayer", "AVFoundation", "AVKit", "GLKit", "OpenGLES", "CoreText", "QuartzCore", "CoreGraphics", "QuickLook", "CoreTelephony", "AssetsLibrary", "CoreLocation", "AddressBook"
  s.libraries = "c++","iconv"

#  s.default_subspecs = "Core"

  s.subspec "Core" do |ss|
    ss.subspec "Headers" do |sss|
      sss.source_files = "UniMPSDK/Core/Headers/*.h"

      sss.subspec "weexHeader" do |ssss|
        ssss.source_files = "UniMPSDK/Core/Headers/weexHeader/*.h"
      end
    end

    ss.subspec "Libs" do |sss|
      sss.vendored_library = "UniMPSDK/Core/Libs/*.a"
      sss.vendored_frameworks = "UniMPSDK/Core/Libs/*.framework"
    end
  end
  
  s.subspec "Features" do |ss|
      ss.source_files = "UniMPSDK/Features/Headers/*.h"
      ss.vendored_library = "UniMPSDK/Features/Libs/*.a"
      ss.vendored_frameworks = "UniMPSDK/Features/Libs/*.framework"
      # ,"UniMPSDK/Features/Libs/*.xcframework"
      ss.resources = ["UniMPSDK/Features/Resources/*.bundle"]
  end

  s.resources = ["UniMPSDK/Core/Resources/*.js", "UniMPSDK/Core/Resources/*.ttf", "UniMPSDK/Core/Resources/*.bundle"]
  s.dependency 'ijkplayerssl'
  s.dependency 'Masonry'
  s.dependency 'SDWebImage'
end
