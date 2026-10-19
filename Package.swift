// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "Choicely",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "ChoicelyCore", targets: ["Choicely"]),
        .library(name: "ChoicelyMap", targets: ["ChoicelyMap"]),
        .library(name: "ChoicelyFirebase", targets: ["ChoicelyFirebaseSDK"]),
        .library(name: "ChoicelyShop", targets: ["ChoicelyShop"]),
        .library(name: "ChoicelyAd", targets: ["ChoicelyAdSDK"]),
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNative", "ChoicelyReactNativeEngine", "hermesvm", "rnllama", "libavcodec", "libavformat", "libavutil", "libswresample"]),
    ],
    dependencies: [
        .package(url: "https://github.com/layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "https://github.com/Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28")),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "11.10.0")),
        .package(url: "https://github.com/firebase/FirebaseUI-iOS.git", .upToNextMajor(from: "14.0.0")),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", .upToNextMajor(from: "12.0.0")),
        // ChoicelyCore's module interface imports RealmSwift (library evolution
        // exposes internal imports), so consumers must be able to resolve it.
        .package(url: "https://github.com/realm/realm-swift.git", .upToNextMajor(from: "20.0.0"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: [
                "ChoicelyCore", "FlexLayout", "DTCoreText",
                .product(name: "RealmSwift", package: "realm-swift")
            ]
        ),
        .target(
            name: "ChoicelyFirebaseSDK",
            dependencies: [
                "ChoicelyFirebase",
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFacebookAuthUI", package: "FirebaseUI-iOS")
            ]
        ),
        .target(
            name: "ChoicelyAdSDK",
            dependencies: [
                "ChoicelyAd",
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/ChoicelyCore.xcframework.zip",
            checksum: "f785c0de925025e5160eebbbbcbb9522c11e0629a342cc8bbb0f324ea1144ad3"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/ChoicelyMap.xcframework.zip",
            checksum: "cc2a01ad1951aa65eacd7e6a36da2588f77cef021bae23f065c7ff7bb56d4f18"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/ChoicelyFirebase.xcframework.zip",
            checksum: "fcda4695977a4a18f6ea1e59df07e51a2dbe796fa4c51c9030aa65ef352d7589"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/ChoicelyShop.xcframework.zip",
            checksum: "6bdd5a7207504ce1391114b0ff4190ab3c108ebe3e6adb721c6ca74cc05b3236"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/ChoicelyAd.xcframework.zip",
            checksum: "08c22437f50f22d96247f5e95c7c6dc1419eccb491baafb94b51fca707dc1400"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "5fde0cd7f757a13817046d661e1012ba13c99f2e78021de84a3c80350cbabe3a"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/hermesvm.xcframework.zip",
            checksum: "cc6d443e4871d3f7c1771f3131524e0eabf6ad50bf2de13d83647acc128903b1"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/rnllama.xcframework.zip",
            checksum: "6dbb7bae531f3c61479fc0a52f4704e99fd0cde0d2a40f3cc9e05f3c9eb568d6"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/libavcodec.xcframework.zip",
            checksum: "af223b92d09e729e788886917fc9d32a9e94f0acd974d1c075e91ead4aa8c18b"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/libavformat.xcframework.zip",
            checksum: "732a6cc1b7a3cf758c52873c2c13e99e6c065c406de6aee4d67b0e034f8efac3"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/libavutil.xcframework.zip",
            checksum: "697b7de0f2fb66500ccf3b9396ec559e3b14e7c4fbc4ffd455fdbdf233379a35"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/libswresample.xcframework.zip",
            checksum: "8eaeacb8c1fa855ca9d055636f0e045326488714435443c1cc857e329c9fb5e5"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.16/ChoicelyReactNative.xcframework.zip",
            checksum: "781d02fb13492bb03d511af558cd431038f3f518de78d8f044be3c46bfdf783e"
        )
    ]
)
