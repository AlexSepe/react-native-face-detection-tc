require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::UI.puts "[FaceDetection] Thank you for using FaceDetection TrueChange 💯❤️"

Pod::Spec.new do |s|
  s.name         = "react-native-face-detection"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/AlexSepe/react-native-face-detection-tc.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm}"

  s.dependency "React-Core"

  s.dependency 'GoogleMLKit/FaceDetection', '6.0.0'
end
