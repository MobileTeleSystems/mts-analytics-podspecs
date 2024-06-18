Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "MTSAnalytics"
s.summary = "MTSAnalytics is a tool which helps to track events and report crashes"
s.requires_arc = true

s.version = "1.1.0"

s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Pavel Bogart" => "pibogar1@mts.ru" }

s.homepage = "https://a.mts.ru/"

s.source = { :http => "https://github.com/MobileTeleSystems/mts-analytics-swiftpm-ios-sdk/releases/download/1.1.0/MTSAnalytics-1.1.0.zip",
             :sha256 => "6af055112ff90a9c7a3d351d372b0e68fe3843340d2d0315f79db17c8b893345"}

s.static_framework = true

s.framework = "UIKit"
s.dependency 'SQLite.swift', '~> 0.14.0'
s.dependency 'FingerprintJS'
s.dependency 'PLCrashReporter'

s.source_files = 'MTSAnalytics/**/*.{swift}'

s.resources = "MTSAnalytics/**/*.{json}"

s.swift_version = "5.0"

end
