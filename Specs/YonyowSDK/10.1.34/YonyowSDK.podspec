Pod::Spec.new do |s|
  s.name             = 'YonyowSDK'
  s.version          = '10.1.34'
  s.summary          = 'Yonyow Game SDK for iOS'
  s.description      = <<-DESC
YonyowSDK provides authentication, payment and user management for iOS games.
Supports Sign in with Apple, Google, Facebook, Discord.
BREAKING CHANGE: All class prefixes changed from JLH to YYS.
  DESC

  s.homepage         = 'https://www.yonyow.com'
  s.license          = { :type => 'MIT', :text => 'Copyright © 2026 Yonyow Tech. All rights reserved.' }
  s.author           = { 'Yonyow Tech' => 'support@yonyow.com' }

  # 使用 Nexus HTTP 仓库
  s.source           = {
    :http => 'http://nexus.yonyow.com/repository/yonyowsdk-raw/YonyowSDK/10.1.34/YonyowSDK.xcframework.zip',
    :type => :zip,
    :sha256     => '8ddeeaa17ca878e0daffd56cb23c65ff8b60ec0d06e2995e27f5fb286f84c051'
  }

  # 指定 xcframework 在解压后的位置（相对于 zip 根目录）
  s.ios.vendored_frameworks = 'YonyowSDK.xcframework'

  # ✅ 显式声明 bundle 资源，确保第三方登录按钮等图片资源能被正确复制到 app 中
  s.resources = 'YonyowSDK.xcframework/ios-arm64/YonyowSDK.framework/YonyowMobileSDK.bundle'

  s.platform         = :ios, '13.0'
  s.swift_version    = '5.0'

  # 自动依赖第三方 SDK（更新到最新稳定版本 - 2026-04-07）
  s.dependency 'GoogleSignIn', '~> 9.1'  # 保持当前版本（稳定）
  s.dependency 'FBSDKLoginKit', '~> 17.0'
  s.dependency 'FBSDKCoreKit', '~> 17.0'
  # 消息推送（FCM）；FirebaseCore 11.x 与 GoogleUtilities 8.x 实测均支持 iOS 12，且与 GoogleSignIn 9.x 的 GU 8 统一
  s.dependency 'Firebase/Messaging', '~> 11.6'

  # 系统框架
  s.frameworks       = 'UIKit', 'Foundation', 'CoreGraphics', 'AuthenticationServices', 'StoreKit', 'UserNotifications'

  # 弱链接（可选）
  s.weak_frameworks = 'AuthenticationServices', 'StoreKit', 'PhotosUI'
end
