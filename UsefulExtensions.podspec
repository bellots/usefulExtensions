#
#  Be sure to run `pod spec lint UsefulExtensions.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "UsefulExtensions"
  s.version      = "0.1.2"
  s.summary      = "Some useful extensions in Swift."
  s.description  =  <<-DESC
                    Here you can find some class extension which i created in my projects.
                    DESC

  s.homepage     = "https://github.com/bellots/usefulExtensions"

  s.license = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Andrea Bellotto" => "andreabellotto88@gmail.com" }

  s.source       = { :git => "https://github.com/bellots/usefulExtensions.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '10.0'

  s.source_files  = "Classes", "UsefulExtensions/**/*.{h,m,swift}"

end
