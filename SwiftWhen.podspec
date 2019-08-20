Pod::Spec.new do |s|
  s.name                  = "SwiftWhen"
  s.version               = "0.0.3"
  s.summary               = "A Swift implementation of the Kotlin when expression"
  s.homepage              = "https://github.com/shackley/swift-when"
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "Sterling Hackley" => "sterlinghackley@gmail.com" }
  s.source                = { :git => "https://github.com/shackley/swift-when.git", :tag => s.version }
  s.source_files          = "SwiftWhen/*.swift"
  s.ios.deployment_target = "13.0"
  s.requires_arc          = true
  s.swift_version         = "5.1"
end
