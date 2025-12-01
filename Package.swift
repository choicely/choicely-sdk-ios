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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4/ChoicelyCore.xcframework.zip",
            checksum: "499459a782b3415adf80596ce08ed1b77271cc01434bedfdf404520b177e0f6e"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4/ChoicelyMap.xcframework.zip",
            checksum: "fa38e145aec0b55b42a31c3e4d1aa099b4c9e2bd00555eb13198d2c5dc68a358"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4/ChoicelyFirebase.xcframework.zip",
            checksum: "d1ef077c0499c5fa8bae8afd4bfb4cfdb9eea93723457d530df085beb1b946ca"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4/ChoicelyShop.xcframework.zip",
            checksum: "9cc4f4c32256377c56f869f22e4f65ef3a12915041199c974eb5c652ae0e4ef8"
        )
    ]
)
