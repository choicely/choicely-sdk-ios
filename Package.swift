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
        .package(url: "git@github.com:layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "git@github.com:googlemaps/ios-maps-sdk.git", .upToNextMajor(from: "8.4.0")),
    ],
    targets: [
        .target(
            name: "ChoicelySDK",
            dependencies: [
                .product(name: "GoogleMaps", package: "ios-maps-sdk"),
                "FlexLayout",
                .target(name: "ChoicelySDKCore")
            ]
        ),
        .binaryTarget(
            name: "ChoicelySDKCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.13/ChoicelySDKCore.xcframework.zip",
            checksum: "478a7442250ee6713f86315b49a0ce24a61755db6944b5f62219407891094167"
        )
    ]
)
