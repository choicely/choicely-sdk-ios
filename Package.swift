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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4-alpha/ChoicelyCore.xcframework.zip",
            checksum: "5aec44e819ed32c0d6e69cbd8e0a29b641252cf9f27b11785e18b740e818e3d2"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4-alpha/ChoicelyMap.xcframework.zip",
            checksum: "81298a03cf7503803e1ac329a981dd9ca890d50327bac43594768844f263e572"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4-alpha/ChoicelyFirebase.xcframework.zip",
            checksum: "f7953bfd9df63087b5ee11d01536a61d9add008bf1c8c26ab5246fcf0d3ae8ae"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4-alpha/ChoicelyShop.xcframework.zip",
            checksum: "e9e3f84441f11bc6ea87f89fb7109159e6d7e23ee1376d6de5e49064cbb85065"
        )
    ]
)
