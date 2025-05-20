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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.8/ChoicelySDKCore.xcframework.zip",
            checksum: "7c18cde7bd18b3d377d91e80f08f436e5ff9cd0953f431c347d7f9d1170e82a9"
        )
    ]
)
