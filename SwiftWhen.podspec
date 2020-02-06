Pod::Spec.new do |s|
  s.name                      = "SwiftWhen"
  s.version                   = "0.1.0"
  s.summary                   = "A Swift Implementation of the Kotlin when expression"
  s.homepage                  = "https://github.com/shackley/SwiftWhen"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Sterling Hackley" => "sterlinghackley@gmail.com" }
  s.ios.deployment_target     = "8.0"
  s.osx.deployment_target     = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target    = "9.0"
  s.source                    = { :git => "https://github.com/shackley/SwiftWhen.git", :tag => s.version.to_s }
  s.source_files              = "Sources/**/*.swift"
  s.swift_version             = "5.1"
  s.frameworks                = "Foundation"
end
