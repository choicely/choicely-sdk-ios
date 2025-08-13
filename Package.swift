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
                .target(name: "ChoicelySDKCore"),
                .target(name: "ChoicelySDKMaps")
            ]
        ),
        .binaryTarget(
            name: "ChoicelySDKCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.22/ChoicelySDKCore.xcframework.zip",
            checksum: "751226cc390a33aa9b9ee50530f47915c5bcff3fccbc114d85c70eefa08c4685"
        ),
        .binaryTarget(
            name: "ChoicelySDKMaps",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.22/ChoicelySDKMaps.xcframework.zip",
            checksum: "77db0962b5ab07d7ff95d06e9817c8df35ea3d4fe6cee7bd33d6a2328a15feff"
        )
    ]
)
