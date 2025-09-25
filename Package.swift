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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.12/ChoicelyCore.xcframework.zip",
            checksum: "b593c1e93e923b6ca71ef4f77813459b0b06feaca8e1ff3eeb7fbbaa0c6e089b"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.12/ChoicelyMap.xcframework.zip",
            checksum: "d3e5d40752516ac6afc9ca71e8eb0c5ed86af460fb1562139ccb8f15e7a15d4b"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.12/ChoicelyFirebase.xcframework.zip",
            checksum: "935e19c967b25ee2cef4cdec10950d9ef6bc6a2513f7a88c157a1d9f84fcb15e"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.12/ChoicelyShop.xcframework.zip",
            checksum: "ffac7b41af0eb23f143029e937332db7e3b113087533a931fe824aa1c6697707"
        )
    ]
)
