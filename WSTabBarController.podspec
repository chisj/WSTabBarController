Pod::Spec.new do |s|
  s.name         = "WSTabBarController"
  s.version      = "0.0.2"
  s.summary      = "A custom TabBarController with publish button written in Swift."

  s.homepage     = "https://github.com/chisj/WSTabBarController"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Chisj" => "chisj2012@gmail.com" }
  s.source       = { :git => "https://github.com/chisj/WSTabBarController.git", :tag => "0.0.2" }

  s.source_files  = "WSTabBarController/WSTabBarController/*.swift"
  s.platform     = :ios, '8.0'
  s.framework    = "UIKit"
  s.requires_arc = true
end
