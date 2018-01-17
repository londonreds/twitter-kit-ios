Pod::Spec.new do |s|
  s.name = "TwitterKit"
  s.version = "3.3.0"
  s.summary = "Increase user engagement and app growth."
  s.homepage = "https://github.com/twitter/twitter-kit-ios"
  s.documentation_url = "https://github.com/twitter/twitter-kit-ios/wiki"
  s.social_media_url = "https://twitter.com/TwitterDev"
  s.authors = "Twitter"
  s.platform = :ios, "9.0"
  s.source = { :git => 'git@github.com:buzzfeed/twitter-kit-ios.git', :tag => 'buzzfeed-3.3.0' }
  s.prefix_header_file = 'TwitterKit/TwitterKit/Supporting Files/TwitterKit-Prefix.pch'
  s.license = { :type => "Commercial", :text => "Twitter Kit: Copyright Twitter, Inc. All Rights Reserved. Use of this software is subject to the terms and conditions of the Twitter Kit Agreement located at https://dev.twitter.com/overview/terms/twitterkit and the Developer Agreement located at https://dev.twitter.com/overview/terms/agreement. OSS: https://github.com/twitter/twitter-kit-ios/blob/master/OS_LICENSES.md"}
  s.resources = ["iOS/TwitterKit.framework/TwitterKitResources.bundle", "iOS/TwitterKit.framework/TwitterShareExtensionUIResources.bundle"]
  s.frameworks = "CoreText", "QuartzCore", "CoreData", "CoreGraphics", "Foundation", "Security", "UIKit", "CoreMedia", "AVFoundation", "SafariServices"
  s.dependency "TwitterCore", ">= 3.1.0"

  s.subspec 'Core' do |sub|
    sub.source_files = 'TwitterKit/TwitterKit/**/TWTR*.{h,m}'
  end
  s.subspec 'ShareExtensionUI' do |sub|
    sub.source_files = 'TwitterKit/TwitterShareExtensionUI/**/*.{h,m}'
  end
end