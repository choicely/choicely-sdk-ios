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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.0/ChoicelyCore.xcframework.zip",
            checksum: "f4681a5072173e911d58ddb6d89196942f19c25d0c999e83c5a547d4b7723018"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.0/ChoicelyMap.xcframework.zip",
            checksum: "08c76ea7bb090aa4aecc4612debf3f90e4a1386bcc02b27720aa70c7733a9203"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.0/ChoicelyFirebase.xcframework.zip",
            checksum: "a5b9390af595a48f938c5d0a13e56cbe469dc28d2e9b824faef11e4cd6a4cd92"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.0/ChoicelyShop.xcframework.zip",
            checksum: "31d9f3d4f48a2c8d2b0f56a1c62370d99a4d2ff9ab6ad1a7696a76f5a66da8a3"
        )
    ]
)
