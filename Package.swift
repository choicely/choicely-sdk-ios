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
                .target(name: "GoogleMaps")
            ]
        ),
        .binaryTarget(name: "GoogleMaps", path: "Artifacts/GoogleMaps.xcframework"),
        .binaryTarget(
            name: "ChoicelySDKCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.14/ChoicelySDKCore.xcframework.zip",
            checksum: "478a7442250ee6713f86315b49a0ce24a61755db6944b5f62219407891094167"
        )
    ]
)
