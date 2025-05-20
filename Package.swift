// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ChoicelySDK",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "ChoicelySDKCore",
            targets: ["ChoicelySDKCore"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ChoicelySDKCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.9/ChoicelySDKCore.xcframework.zip",
            checksum: "2d0ae6b2e3019c65f35920f8613b5ad5e6d23a34e1e5fb6ee82ae1eb3dc9f896"
        )
    ]
)
