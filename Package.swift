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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.18/ChoicelySDKCore.xcframework.zip",
            checksum: "5ff039eb5c53fa251b78b465b694cab25725e6a7ed9b22be3edfd59b4d06bbb3"
        )
    ]
)
