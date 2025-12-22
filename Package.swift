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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.0/ChoicelyCore.xcframework.zip",
            checksum: "5a54b19e2e1cba5aecec2cf7ceca2a5127f1c573a2a63a79e972f5ea7c22b817"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.0/ChoicelyMap.xcframework.zip",
            checksum: "14912f5c98c02764baecba83de5996c17cc7b0b2c08abb49607136e85fd261a1"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.0/ChoicelyFirebase.xcframework.zip",
            checksum: "79292970b4497aaf316485860c21e81203c6c8c0b44dabb0f278897a68a01671"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.0/ChoicelyShop.xcframework.zip",
            checksum: "3a5e4f74eca34bbc9cdaf423b40338909ab0ca6e6d8eac33d5626006a695196d"
        )
    ]
)
