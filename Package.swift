// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ChoicelySDK",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ChoicelySDKCore",
            targets: ["ChoicelySDKCore"]
        ),
        .library(
            name: "ChoicelySDKShop",
            targets: ["ChoicelySDKShop"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ChoicelySDKCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.5/ChoicelySDKCore.xcframework.zip",
            checksum: "1a1adb6711ce7b0887ca370d8fd7f291d5f0ba9066879d7cf9244feb50eeb61e"
        ),
        .binaryTarget(
            name: "ChoicelySDKShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.5/ChoicelySDKShop.xcframework.zip",
            checksum: "9bd25380990448d05cd4d6af8c859b3cea1df630eb700091bbec67aa3bba0e16"
        )
    ]
)
