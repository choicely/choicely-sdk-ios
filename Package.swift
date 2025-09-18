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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.68/ChoicelyCore.xcframework.zip",
            checksum: "b38bb2ecd8546d732453b7e8b66363337f1cb295bb57875a845965a4cb9541e7"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.68/ChoicelyMap.xcframework.zip",
            checksum: "798b7ce7a1abf1054b919901d50436efb1615fd6ccebecbecedd529e783e8f12"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.68/ChoicelyFirebase.xcframework.zip",
            checksum: "efd3b49f689638a7bf5f95e895e929b100475ffd9f7be3b45da6a8ee236021cd"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.68/ChoicelyShop.xcframework.zip",
            checksum: "cb3481cfa2b6deb921fe02fe3e98b15159e2e4214a86d321831f2e8ff1844fa1"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.68/ChoicelyAd.xcframework.zip",
            checksum: "2bb3d6135f753b3c3aea3647d2d9f9d78845d2caa1ef301d65f496b5e411e372"
        )
    ]
)
