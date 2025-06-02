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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.10/ChoicelySDKCore.xcframework.zip",
            checksum: "2f9e85be0078abfbc28ecf40825a7e0831dd795e136f598610965c6bc27a4a1e"
        )
    ]
)
