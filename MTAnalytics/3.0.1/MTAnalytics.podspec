Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '13.0'
s.tvos.deployment_target = '13.0'
s.name = "MTAnalytics"
s.summary = "MTAnalytics is a tool which helps to track events and report crashes"
s.requires_arc = true

s.version = "3.0.1"

s.license = { :type => "proprietary" }

s.author = { "Pavel Bogart" => "pibogar1@mts.ru" }

s.homepage = "https://a.mts.ru/"

s.source = { :http => "https://github.com/MobileTeleSystems/mts-analytics-swiftpm-ios-sdk/releases/download/3.0.1/MTAnalytics-3.0.1.zip",
             :sha256 => "0ae346a4bdf030304a1e2cc1abcb3c3c27dc931825ec074f0f9bd6f84e3cc058"}

s.static_framework = true

s.framework = "UIKit"
s.dependency 'PLCrashReporter', '~> 1.11.0'
s.dependency 'SwiftProtobuf'

s.source_files = 'MTAnalytics/**/*.{swift}'

s.resources = "MTAnalytics/**/*.{json}"

s.swift_version = "5.0"

s.vendored_frameworks = "MTAnalytics.xcframework"

end
