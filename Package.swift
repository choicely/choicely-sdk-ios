// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ChoicelySDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "ChoicelySDK",
            targets: ["ChoicelySDK"]
        ),
    ],
    dependencies: [
        .package(url: "git@github.com:layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10"))
    ],
    targets: [
        .target(
            name: "ChoicelySDK",
            dependencies: [
                "FlexLayout",
                .target(name: "ChoicelySDKCore")
            ]
        ),
        .binaryTarget(
            name: "ChoicelySDKCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.21/ChoicelySDKCore.xcframework.zip",
            checksum: "4b76562f6c0c623965475379dc56cb736e8cc3b7400d948d7e568b733064a4ca"
        )
    ]
)
