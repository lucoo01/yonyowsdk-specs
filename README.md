# YonyowSDK Specs

CocoaPods spec repository for YonyowSDK (iOS).

## Content

This repo contains **podspec metadata only** (version, dependencies, download URL, sha256).
**No source code** is stored here — the compiled `YonyowSDK.xcframework` binary is hosted in a private Nexus repository.

## Usage

```ruby
source 'https://github.com/lucoo01/yonyowsdk-specs.git'
source 'https://cdn.cocoapods.org/'

target 'YourApp' do
  pod 'YonyowSDK', '~> 10.1.2'
end
```

To upgrade the SDK, just change the version number and run `pod install`.
