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
                .product(name: "GoogleMapsBase", package: "ios-maps-sdk"),
                .product(name: "GoogleMapsCore", package: "ios-maps-sdk"),
                "FlexLayout",
                .target(name: "ChoicelySDKCore")
            ]
        ),
        .binaryTarget(
            name: "ChoicelySDKCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.17/ChoicelySDKCore.xcframework.zip",
            checksum: "df0a3c6625bb97fdd2b83e279f22285b8e30b3208836e398d4dc66ab5c4b0ba6"
        )
    ]
)
