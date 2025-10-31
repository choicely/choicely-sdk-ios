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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.1/ChoicelyCore.xcframework.zip",
            checksum: "edb9f8bc6cf0ea055f4a296c2290457a94151a68876305073f5016377a27512e"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.1/ChoicelyMap.xcframework.zip",
            checksum: "cb561672e6e068ae8c29c2ea41aa381809df2315f07bbe876f1e14fe63c29b01"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.1/ChoicelyFirebase.xcframework.zip",
            checksum: "6b492cde8b8206cc16352f548e536cb97f1751d23613ac4ee95e3e55eabf5954"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.1/ChoicelyShop.xcframework.zip",
            checksum: "67add25edb10bff37249cab64e8683403298d0069104d7eca4dd3aa4a0e4f49e"
        )
    ]
)
