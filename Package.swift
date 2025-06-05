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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.12/ChoicelySDKCore.xcframework.zip",
            checksum: "sha256:1d77846bf2415b9716d6a7716824e8a734c19977d94cc9db259fe0c20eca875a"
        )
    ]
)
