require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNNetworkState"
  s.version      = package['version']
  s.summary      = "RNNetworkState"
  s.description  = <<-DESC
                  RNNetworkState
                  DESC
  s.homepage     = "https://github.com/Nghi-NV/react-native-network-state"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "author" => package['author']['name'] }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/Nghi-NV/react-native-network-state.git"}
  s.source_files = "ios/*.{h,m}"
  s.framework    = 'SystemConfiguration'
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

end
