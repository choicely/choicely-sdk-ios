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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.54/ChoicelyCore.xcframework.zip",
            checksum: "eff8c5f8f01eb322cfe059e703227ad09f69d568f2a7c565d4468bfe8f7e4f21"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.54/ChoicelyMap.xcframework.zip",
            checksum: "08dc91700f1b3b3b868e3667a70521063d42cbee4502351b1adab70a712bbb92"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.54/ChoicelyFirebase.xcframework.zip",
            checksum: "77e367b0ff59e56087de79ed1d9edd6d47d9e29e161d4568794f7bd8ca7aa3e5"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.54/ChoicelyShop.xcframework.zip",
            checksum: "5b8e9dc835d8f97631b8cd6103a7352182d87131c8397cc0e96612693028d99e"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.54/ChoicelyAd.xcframework.zip",
            checksum: "9cad52fcca9911f31cf43955de702818092d233fa0d0767c910901c29193c08e"
        )
    ]
)
