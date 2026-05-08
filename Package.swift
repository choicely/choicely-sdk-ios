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
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNative", "ChoicelyReactNativeEngine", "hermesvm", "rnllama"]),
    ],
    dependencies: [
        .package(url: "https://github.com/layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "https://github.com/Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28")),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "11.10.0")),
        .package(url: "https://github.com/firebase/FirebaseUI-iOS.git", .upToNextMajor(from: "14.0.0"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: ["ChoicelyCore", "FlexLayout", "DTCoreText"]
        ),
        .target(
            name: "ChoicelyFirebaseSDK",
            dependencies: [
                "ChoicelyFirebase",
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFacebookAuthUI", package: "FirebaseUI-iOS")
            ]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.6/ChoicelyCore.xcframework.zip",
            checksum: "951c09be92437fcd1cac07bb7668f066a33afbf3fe56a22abb8076657ea7a217"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.6/ChoicelyMap.xcframework.zip",
            checksum: "6b3f1b18d191609af565d078cf94384e9feaa42c9cfdf10f5e1ab244c13c0b2b"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.6/ChoicelyFirebase.xcframework.zip",
            checksum: "4edd6c62fe94233baa7c47660705cb3a65b49f994a8a874f832ca286b5b24b8c"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.6/ChoicelyShop.xcframework.zip",
            checksum: "8a4147d1a2198183e8859b3f13492ea3fdcb3956302df4ccd963a450c6e22513"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.6/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "69af7d6d1df46b8fd74b57c51bbc12eb545efa4abe04b5e113c0a7684da92f8e"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.6/hermesvm.xcframework.zip",
            checksum: "e5cd5f0201d4ce742a7ecbebe579b7beab7da7714a040672f8ac7afe18f0e71d"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.6/rnllama.xcframework.zip",
            checksum: "9cfa16a21e91953b145f0b20319e6e5ef9e45781d8be96e89904fffdd3abe6f6"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.6/ChoicelyReactNative.xcframework.zip",
            checksum: "fde3e1b96ba7c662ac650e87d35b255b91efa453c7185542e7327a37f315a205"
        )
    ]
)
