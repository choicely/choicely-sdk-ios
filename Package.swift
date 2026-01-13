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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.1/ChoicelyCore.xcframework.zip",
            checksum: "c56b7db5624b680c207c91c0b9e957189f6f7a64d915662ec875e82f3f6b11a9"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.1/ChoicelyMap.xcframework.zip",
            checksum: "be1f87957b9b5cdbd26f8b9bc3acce2aca2f4bd7cca5e1b64ffc4d08533e6c3c"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.1/ChoicelyFirebase.xcframework.zip",
            checksum: "57022153af57cf54875503d1a2af9fe05c1390d41b9792dcef2b2793b7115f46"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.1/ChoicelyShop.xcframework.zip",
            checksum: "fa3f65d8413a94ca026023a87835235edb0ad13d71db313ca765a2cce8a1914f"
        )
    ]
)
