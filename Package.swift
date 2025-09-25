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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.16/ChoicelyCore.xcframework.zip",
            checksum: "455ec7aaa51d3fab7e6a2fae6292fe881a54e6e3b12d5d7d987f988de1d4c6f7"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.16/ChoicelyMap.xcframework.zip",
            checksum: "0878de9f1685e497d521d0cf5c9a7a02ea93286ebb95141feb2160a0618dc1b1"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.16/ChoicelyFirebase.xcframework.zip",
            checksum: "1b1e18c3057c6e1b73fe236788ecc6c3abdf94db1df5fee94b289286d54b85b8"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.16/ChoicelyShop.xcframework.zip",
            checksum: "3da30af21ca1950e4f1a7fc01a0aca39dcb8c42c6fd0c9a6648c3229c1a672a1"
        )
    ]
)
