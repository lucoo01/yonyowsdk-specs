Pod::Spec.new do |s|
  s.name             = 'YonyowSDKSwift'
  s.version          = '10.1.42'
  s.summary          = 'Yonyow Game SDK Swift Extensions for iOS'
  s.description      = <<-DESC
YonyowSDKSwift provides modern Swift-only features for YonyowSDK.
Currently includes StoreKit 2 payment support for iOS 15+.
Requires YonyowSDK as base framework.

Features:
- StoreKit 2 payment (iOS 15.0+)
- Modern Swift async/await API
- Automatic JWS receipt verification
- Seamless integration with YonyowSDK

Integration:
1. Add YonyowSDK to your Podfile (required)
2. Add YonyowSDKSwift to your Podfile (optional, for StoreKit 2)
3. Run 'pod install'

The SDK will automatically detect if YonyowSDKSwift is integrated
and use StoreKit 2 on iOS 15+ devices when available.
  DESC

  s.homepage         = 'https://www.yonyow.com'
  s.license          = { :type => 'MIT', :text => 'Copyright © 2026 Yonyow Tech. All rights reserved.' }
  s.author           = { 'Yonyow Tech' => 'support@yonyow.com' }

  # Source: Nexus HTTP 仓库（publish-swift.sh 会自动更新 version / url / sha256）
  s.source           = {
    :http => 'http://nexus.yonyow.com/repository/yonyowsdk-raw/YonyowSDKSwift/10.1.42/YonyowSDKSwift.xcframework.zip',
    :type => :zip,
    :sha256 => 'f8b349eb39b3a8b410cce7eca2e415780b125a2bb6e0be95b7d255b1236aff68'
  }

  # Framework
  s.ios.vendored_frameworks = 'YonyowSDKSwift.xcframework'

  # Platform: iOS 15.0+ (StoreKit 2 requirement)
  s.platform         = :ios, '15.0'
  s.swift_version    = '5.0'

  # 依赖主 SDK（CocoaPods 会自动处理版本兼容性）
  s.dependency 'YonyowSDK', '~> 10.1'

  # 系统框架
  s.frameworks       = 'UIKit', 'Foundation', 'StoreKit'

  # 弱链接（StoreKit 2 在 iOS 15+ 才可用）
  s.weak_frameworks = 'StoreKit'
end
