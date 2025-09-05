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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.58/ChoicelyCore.xcframework.zip",
            checksum: "89f0937e7ca6d44cd17e5391cac6c0ee06c9f6c40d5d54b029494b0baf44ac30"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.58/ChoicelyMap.xcframework.zip",
            checksum: "8544e3d3f45f21fe7603f2e8ce00e0ca7dd87676419b36671e3a28b4e1cb71ad"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.58/ChoicelyFirebase.xcframework.zip",
            checksum: "84a607985bb3fc263107b24b93cb9be8fd3713b971addbe15a99d859df533115"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.58/ChoicelyShop.xcframework.zip",
            checksum: "68749f46bc1e65f69d674216ad3493a42a8094e1b1dbab394936934236aa5654"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.58/ChoicelyAd.xcframework.zip",
            checksum: "da7a8b91dbc56bceb6dc87dd58e1421828cc0acfa5b1b8b38f46af7074c9dfd8"
        )
    ]
)
