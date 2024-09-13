Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '13.0'
s.tvos.deployment_target = '13.0'
s.name = "MTMetrics"
s.summary = "MTMetrics is a tool which helps to track events and report crashes"
s.requires_arc = true

s.version = "3.0.0"

s.license = { :type => "proprietary" }

s.author = { "Pavel Bogart" => "pibogar1@mts.ru" }

s.homepage = "https://a.mts.ru/"

s.source = { :http => "https://packages.a.mts.ru/repository/apple-sdk/ios-sdk/build/MTMetrics-3.0.0.zip",
             :sha256 => "0d850916b6c4ed16b2d86cf232115d1f3fcc6bd616ddc4d959377cd6d629239e"}

s.static_framework = true

s.framework = "UIKit"
s.dependency 'PLCrashReporter', '~> 1.11.0'
s.dependency 'SwiftProtobuf'

s.swift_version = "5.0"

s.vendored_frameworks = "MTMetrics.xcframework"

end
