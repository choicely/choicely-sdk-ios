// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "Choicely",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "ChoicelyCore",
            targets: ["Choicely"]
        ),
        .library(
            name: "ChoicelyMap",
            targets: ["ChoicelyMap"]
        ),
        .library(
            name: "ChoicelyFirebase",
            targets: ["ChoicelyFirebase"]
        ),
        .library(
            name: "ChoicelyShop",
            targets: ["ChoicelyShop"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "https://github.com/Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: [
                "FlexLayout",
                "DTCoreText",
                .target(name: "ChoicelyCore")
            ]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.3/ChoicelyCore.xcframework.zip",
            checksum: "cfc023d52f49bbc5867e7f65304e70d2a603fc8529ab8a090d708f38f39fb3b0"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.3/ChoicelyMap.xcframework.zip",
            checksum: "17d018b8d8f2f1c570aa7464920b4e49ccbf67e8ebb89f1bf3589ea854b47862"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.3/ChoicelyFirebase.xcframework.zip",
            checksum: "0a17727ba9949cd1cedb7b7ee96899275ea0724acaa9775d46264005c4e81572"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.3/ChoicelyShop.xcframework.zip",
            checksum: "be5d72d13195c1c7374a9d4f164271b552dc1d1adb1e8d41af0afa48eb8a230b"
        )
    ]
)
