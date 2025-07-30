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
                .target(name: "TestFrameworkDistribution")
            ]
        ),
        .binaryTarget(
            name: "TestFrameworkDistribution",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.19/TestFrameworkDistribution.xcframework.zip",
            checksum: "2128b406a4fdcf16bd4bdd428f8627bc13e0f891e7a2ca71da31c79bac370f65"
        )
    ]
)
