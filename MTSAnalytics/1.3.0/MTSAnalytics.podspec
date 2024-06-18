Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "MTSAnalytics"
s.summary = "MTSAnalytics is a tool which helps to track events and report crashes"
s.requires_arc = true

s.version = "1.3.0"

s.license = { :type => "proprietary" }

s.author = { "Pavel Bogart" => "pibogar1@mts.ru" }

s.homepage = "https://a.mts.ru/"

s.source = { :http => "https://github.com/MobileTeleSystems/mts-analytics-swiftpm-ios-sdk/releases/download/1.3.0/MTSAnalytics-1.3.0.zip",
             :sha256 => "1e6fc25458fb9f14e7818e866d1c6ea56e0e12237003619833c1db210ee11ddf"}

s.static_framework = true

s.framework = "UIKit"
s.dependency 'PLCrashReporter', '~> 1.11.0'
s.dependency 'SwiftProtobuf', '~> 1.22.1'

s.source_files = 'MTSAnalytics/**/*.{swift}'

s.resources = "MTSAnalytics/**/*.{json}"

s.swift_version = "5.0"

s.vendored_frameworks = "MTSAnalytics.xcframework"

end
