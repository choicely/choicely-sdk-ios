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
        ),
        .library(
            name: "ChoicelyAd",
            targets: ["ChoicelyAd"]
        )
    ],
    dependencies: [
        .package(url: "git@github.com:layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "git@github.com:Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28"))
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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.65/ChoicelyCore.xcframework.zip",
            checksum: "7bc9df7d3532263a8c3fc6dd4dbd93b649a403da8c613b7d7538e0b8c69a5ece"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.65/ChoicelyMap.xcframework.zip",
            checksum: "ce71358b440c0877e7a831b5315e429956db43adb05dff16a7b85619f056e172"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.65/ChoicelyFirebase.xcframework.zip",
            checksum: "1a3a9cb8d7efa712461ae70300f6af69cace1b497a6106de89b4a1cd242a042c"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.65/ChoicelyShop.xcframework.zip",
            checksum: "9a3eb8b4521e8283bee0875517af46b764e50e110a1805b90e589898d53bad82"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.65/ChoicelyAd.xcframework.zip",
            checksum: "d82af433a46dc2608bc569886c54dbe9dd267c178c0eac7f7b9e4ef468436fdd"
        )
    ]
)
