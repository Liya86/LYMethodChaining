#
#  Be sure to run `pod spec lint LYMethodChaining.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "LYMethodChaining"
  s.version      = "1.0.0"
  s.summary      = "常用类method chaining"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                     常用类method chaining ^-^
                   DESC

  s.homepage     = "https://github.com/Liya86/LYMethodChaining"
  s.license      = "MIT"
  s.author       = "Liya86"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/Liya86/LYMethodChaining.git", :tag => "1.0.0" }
  s.source_files = "Source/*"
  s.frameworks   = "Foundation", "UIKit"
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
