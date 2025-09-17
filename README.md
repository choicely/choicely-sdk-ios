# Choicely iOS SDK

[![Platforms](https://img.shields.io/cocoapods/p/FBSDKCoreKit.svg)](https://cocoapods.org/pods/FBSDKCoreKit)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)]()

**Choicely iOS SDK** is your fast lane to fully custom native apps.

---

## Modules

### Firebase

- **Push Notifications** – Firebase Cloud Messaging (FCM) allows the app to send push notifications directly to users, helping you keep them engaged with instant updates, news, or alerts.
- **Realtime Updates** – With Firebase Realtime Database, content and configuration changes can be delivered instantly to your users without requiring an app update. This ensures your app always reflects the latest data.
- **Social Login** – The Choicely SDK integrates with Firebase Authentication to enable sign-in with popular providers such as Google, Facebook, and Apple. This makes it easy for users to log in without creating a separate account.

### Map

- **Location** – Display user or business locations directly on a map.
- **Interactive Map** – Add markers, zoom, and navigation support within your app.
- **Google Maps Integration** – Leverages the official Google Maps SDK for reliable map rendering and user-friendly experience.

### Shop

- **In-App Purchases** – Allow users to buy items, upgrades, or digital content inside your app.
- **Subscriptions** – Offer recurring subscription plans to give users ongoing access to premium features or content.
- **Paid Votes** – Monetize voting by enabling users to purchase voting credits, which can be used in competitions or polls.

---

## Requirements

- iOS **14.0+**  
- Xcode **13+**  
- Swift **5.5+**  
- Supports device architectures: `arm64`, simulator  

---

## Documentation

Documentation is available for both mobile platforms (Android and iOS).

- [Documentation](https://studiostage.choicely.com/docs/sdk?region=eu)

## Installation

### Step 1: Add Choicely SDK to your project
- In Xcode, with your app project open, navigate to **File > Add Packages**.
- When prompted, add the Choicely SDK repository:
```swift
https://github.com/choicely/choicely-sdk-ios.git
```
- Select the `ChoicelyCore` module for basic SDK functionality. You can find more information on how to set up other modules in [Documentation](https://studiostage.choicely.com/docs/sdk?region=eu).
### Step 2: Import and initialize ChoicelySDK
- Import the `ChoicelyCore` module in your App struct or `UIApplicationDelegate`:
```swift
import ChoicelyCore
```
- Initialize SDK with `ChoicelySDK.initialize(...)` method.

**UIKit**
```swift
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        ChoicelySDK.initialize(
            application: application,
            environment: "CHOICELY_ENVIRONMENT",
            appKey: "YOUR_APP_KEY"
        )
        return true
    }

    ...
}
```

**SwiftUI**
```swift
import SwiftUI

@main
struct YourApp: App {
    init() {
        ChoicelySDK.initialize(
            application: UIApplication.shared,
            environment: "CHOICELY_ENVIRONMENT",
            appKey: "YOUR_APP_KEY"
        )
    }

    ...
}
```

### Step 3: Set the initial view and present it
- Use the `ChoicelySplashViewController` or `ChoicelySplashView` as the root `UIViewController/SwiftUI.View` for your app:

**UIKit**
```swift
window = UIWindow()
window?.rootViewController = ChoicelySplashViewController()
window?.makeKeyAndVisible()
```

**SwiftUI**
```swift
var body: some Scene {
  WindowGroup {
    ChoicelySplashView()
  }
}
```
- 🚀 That’s it! You’re ready to launch the app.
