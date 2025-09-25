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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.15/ChoicelyCore.xcframework.zip",
            checksum: "455ec7aaa51d3fab7e6a2fae6292fe881a54e6e3b12d5d7d987f988de1d4c6f7"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.15/ChoicelyMap.xcframework.zip",
            checksum: "d44c56aca2ce9d15ba44d95d64d7924835688a55a9860a8f22dbfc8660e62fd6"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.15/ChoicelyFirebase.xcframework.zip",
            checksum: "ca354cbb5dcbd3daeba17fa8e589e737af63650e813c5a890db8f77eb7d0bb8e"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.15/ChoicelyShop.xcframework.zip",
            checksum: "d302e2b0d2b883d08042561c3dcb66daa3243a3e055446128924cbca77bd0645"
        )
    ]
)
