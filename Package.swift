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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.4/ChoicelyCore.xcframework.zip",
            checksum: "81c47aac70b0996836f8d1b1466881a3b07ddeb78227db417f1c9f2a61c987bf"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.4/ChoicelyMap.xcframework.zip",
            checksum: "01bd66d1784660a79e0d5a565b77c698d56178a0ef9e3d1a213b0c8481d07630"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.4/ChoicelyFirebase.xcframework.zip",
            checksum: "59fffd7910e583ade1644dd772db65661ed328aa84cd086c83e5687e7ef1f39e"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.4/ChoicelyShop.xcframework.zip",
            checksum: "e300064dc873555c72082c8e5ab2713a321781a657bc5e11e8955854729d77f1"
        )
    ]
)
