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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.41/ChoicelyCore.xcframework.zip",
            checksum: "28bd0de5e1d05960859c1298021dce123c56905cecf342ba78a366b37a45daec"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.41/ChoicelyMap.xcframework.zip",
            checksum: "5036791826c07a2c75572dab025eb35e4c8a9e8d88c07f819b1ec01fd557a50d"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.41/ChoicelyFirebase.xcframework.zip",
            checksum: "036ce331f7b6eb698e3b1c1366328b3c7e05189db3529b7b1242fa5ac04c11f5"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.41/ChoicelyShop.xcframework.zip",
            checksum: "c359bd947296225157cbd84555c8dab8c7cf7b6434ce730aed5f61b9c3c99f90"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.41/ChoicelyAd.xcframework.zip",
            checksum: "0fd137799b659ee20cc3645e67a09a0d357ddc4aafdebf5c2dcdee4dcd22d5db"
        )
    ]
)
