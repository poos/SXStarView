
Pod::Spec.new do |s|

  s.name         = "SXStarView"
  s.version      = "0.1.0"
  s.summary      = "create a starView, later could tap"
  #s.description  = <<-DESC
  #                  DESC

  s.homepage     = "https://github.com/poos/SXStarView"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = 'MIT'
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "xiaoR" => "bieshixuan@163.com" }
  # Or just: s.author    = "iShown"
  # s.social_media_url   = "http://twitter.com/iShown"

  s.platform     = :ios, "7.1"

  s.source       = { :git => "https://github.com/poos/SXStarView.git", :tag => s.version.to_s }

  s.source_files  = "SXStarView/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "SDWebImage", "~> 3.8"
  # s.dependency "TZImagePickerController", "~>1.6.2"

end
