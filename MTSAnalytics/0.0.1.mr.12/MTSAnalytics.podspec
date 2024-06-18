Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "MTSAnalytics"
s.summary = "MTSAnalytics is a tool which helps to track events and report crashes"
s.requires_arc = true

s.version = "0.0.1.mr.12"

s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Pavel Bogart" => "pibogar1@mts.ru" }

s.homepage = "https://a.mts.ru/"

s.source = { :http => "https://artifactory.mts.ru/artifactory/apple-dev-mtsm-generic-local/ios-sdk/build/MTSAnalytics-0.0.1.mr.12.zip",
             :sha256 => "1af7c9afaf799ee0f06f99d812ff497f92aa1981a6da3f5e619475652a7fb816"}

s.static_framework = true

s.framework = "UIKit"
s.dependency 'SQLite.swift', '~> 0.14.0'
s.dependency 'FingerprintJS'
s.dependency 'PLCrashReporter'

s.source_files = 'MTSAnalytics/**/*.{swift}'

s.resources = "MTSAnalytics/**/*.{json}"

s.swift_version = "5.0"

end
