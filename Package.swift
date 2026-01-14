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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.2/ChoicelyCore.xcframework.zip",
            checksum: "33fde4bc97d3651e36eb5c81a459de2d340d8034b3254ec9b75a1da8a0e338a8"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.2/ChoicelyMap.xcframework.zip",
            checksum: "61193b8f836b7bf93120a9e454040251eca9e23836ad171172d97e293e125e7f"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.2/ChoicelyFirebase.xcframework.zip",
            checksum: "b9a436de4a860c8215b18f28df82d26d964e8abc1827d465f7e72d340bb9a318"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.2/ChoicelyShop.xcframework.zip",
            checksum: "00fab18534e4c2e2440ec1defaefdb2cbe3f8c5bbeff51b7e480080b01e4f77f"
        )
    ]
)
