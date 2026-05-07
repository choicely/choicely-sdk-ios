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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.4/ChoicelyCore.xcframework.zip",
            checksum: "d774d2f4b0a6015015ea4f680d2f281b969fd54c8c5842ddf4dc216f98f9bb3f"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.4/ChoicelyMap.xcframework.zip",
            checksum: "2705c249d5a584063b9fa3ec9ac6fe6f8ab59fa405799d1af8415d80b57495af"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.4/ChoicelyFirebase.xcframework.zip",
            checksum: "5d81570a219bba06f7d713fe5b9714a92dadf631f7b676c5808592f65297c5fb"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.4/ChoicelyShop.xcframework.zip",
            checksum: "636a59ccd6cf39bfc887417130db9a0102b33b85347e01945ee2740e2abd12f0"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.4/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "0d1c6c7c8530997231b6096eafc0be09cbacfd18a773dc02dbda83e966b53a04"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.4/hermesvm.xcframework.zip",
            checksum: "9cd2b67634c19b6ddbf2814ca4dea500bc2f49a5b7ec2081c590b1675edd4f56"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.4/rnllama.xcframework.zip",
            checksum: "32a16acd3bc152e6c8d8b413cd8cd1abff15534ced9ccd9ba2f0fb3e2400e3ac"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.4/ChoicelyReactNative.xcframework.zip",
            checksum: "f83f4070c0b17d12f74f15e83f35baca9d1ba9c3dafa79526c3666f2af03e3a8"
        )
    ]
)
