Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '13.0'
s.tvos.deployment_target = '13.0'
s.name = "MTAnalytics"
s.summary = "MTAnalytics is a tool which helps to track events and report crashes"
s.requires_arc = true

s.version = "3.0.0"

s.license = { :type => "proprietary" }

s.author = { "Pavel Bogart" => "pibogar1@mts.ru" }

s.homepage = "https://a.mts.ru/"

s.source = { :http => "https://github.com/MobileTeleSystems/mts-analytics-swiftpm-ios-sdk/releases/download/3.0.0/MTMetrics-3.0.0.zip",
             :sha256 => "f8b7e7461d16aefc91c141287c7db11ab97a1753ba18934457d214345610fbdc"}

s.static_framework = true

s.framework = "UIKit"
s.dependency 'PLCrashReporter', '~> 1.11.0'
s.dependency 'SwiftProtobuf'

s.source_files = 'MTAnalytics/**/*.{swift}'

s.resources = "MTAnalytics/**/*.{json}"

s.swift_version = "5.0"

s.vendored_frameworks = "MTAnalytics.xcframework"

end
