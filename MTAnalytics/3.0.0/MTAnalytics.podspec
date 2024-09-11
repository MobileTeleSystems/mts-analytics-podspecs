Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '13.0'
s.tvos.deployment_target = '13.0'
s.name = "MTSAnalytics"
s.summary = "MTSAnalytics is a tool which helps to track events and report crashes"
s.requires_arc = true

s.version = "3.0.0"

s.license = { :type => "proprietary" }

s.author = { "Pavel Bogart" => "pibogar1@mts.ru" }

s.homepage = "https://a.mts.ru/"

s.source = { :http => "https://github.com/MobileTeleSystems/mts-analytics-swiftpm-ios-sdk/releases/download/3.0.0/MTAnalytics-3.0.0.zip",
             :sha256 => "8e24a805ce208419ae5090297fe051693cc489cf8ca1c803c630c228dd1c1587"}

s.static_framework = true

s.framework = "UIKit"
s.dependency 'PLCrashReporter', '~> 1.11.0'
s.dependency 'SwiftProtobuf'

s.source_files = 'MTSAnalytics/**/*.{swift}'

s.resources = "MTSAnalytics/**/*.{json}"

s.swift_version = "5.0"

s.vendored_frameworks = "MTSAnalytics.xcframework"

end
