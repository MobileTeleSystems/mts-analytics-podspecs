Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '13.0'
s.tvos.deployment_target = '13.0'
s.name = "MTMetrics"
s.summary = "MTMetrics is a tool which helps to track events and report crashes"
s.requires_arc = true

s.version = "3.1.0"

s.license = { :type => "proprietary" }

s.author = { "Pavel Bogart" => "pibogar1@mts.ru" }

s.homepage = "https://a.mts.ru/"

s.source = { :http => "https://packages.a.mts.ru/repository/apple-sdk/ios-sdk/build/MTMetrics-3.1.0.zip",
             :sha256 => "d106b9e801aad9f7cc0236a7f422c85fc258beb0030f1438d8fd6e988739bbe5"}

s.static_framework = true

s.framework = "UIKit"
s.dependency 'PLCrashReporter', '~> 1.11.0'
s.dependency 'SwiftProtobuf'

s.swift_version = "5.0"

s.vendored_frameworks = "MTMetrics.xcframework"

end
