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
        .package(url: "git@github.com:layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: [
                "FlexLayout",
                .target(name: "ChoicelyCore")
            ]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.36/ChoicelyCore.xcframework.zip",
            checksum: "93ab85c8cf50d3220c4936a410f8aa0dc2759c64798c463971a4c612c85d8c1c"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.36/ChoicelyMap.xcframework.zip",
            checksum: "3353b7c87ca5765adc285020b8d0094b8f3b57ea4410d7096e7bf0beedf1f011"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.36/ChoicelyFirebase.xcframework.zip",
            checksum: "78af3bd7c742b1a0127b9330697903708699a6b725319ffc810610842d9b00b7"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.36/ChoicelyShop.xcframework.zip",
            checksum: "e4ad5fe0d1ca11c6782ebafba64e07b3c134b72e856d471d24974e26bb744397"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.36/ChoicelyAd.xcframework.zip",
            checksum: "fd44076cecc88273a7b43b7f5b5275d4a1d765ce88b7ddee629774d8e3b5333c"
        )
    ]
)
