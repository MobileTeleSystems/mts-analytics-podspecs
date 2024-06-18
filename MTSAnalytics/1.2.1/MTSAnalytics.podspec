Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "MTSAnalytics"
s.summary = "MTSAnalytics is a tool which helps to track events and report crashes"
s.requires_arc = true

s.version = "1.2.1"

s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Pavel Bogart" => "pibogar1@mts.ru" }

s.homepage = "https://a.mts.ru/"

s.source = { :http => "https://github.com/MobileTeleSystems/mts-analytics-swiftpm-ios-sdk/releases/download/1.2.1/MTSAnalytics-1.2.1.zip",
             :sha256 => "2d495460664692026df19ce11a148fed454df6460a1222ad4384ed0c0498f8c4"}

s.static_framework = true

s.framework = "UIKit"
s.dependency 'SQLite.swift', '~> 0.14.1'
s.dependency 'FingerprintJS', '~> 1.3.0'
s.dependency 'PLCrashReporter', '~> 1.11.0'
s.dependency 'SwiftProtobuf', '~> 1.22.1'

s.source_files = 'MTSAnalytics/**/*.{swift}'

s.resources = "MTSAnalytics/**/*.{json}"

s.swift_version = "5.0"

s.vendored_frameworks = "MTSAnalytics.xcframework"

end
