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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.67/ChoicelyCore.xcframework.zip",
            checksum: "d19f068ff87483d57698dcfa69bc5e443b117c0daa979d061df50acb0c3f2804"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.67/ChoicelyMap.xcframework.zip",
            checksum: "4ed11feaa840c28e5348b4d601e983bc24370165b6dae3fc110283d0d23e5000"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.67/ChoicelyFirebase.xcframework.zip",
            checksum: "0066f60fbc58266f9f24f994028b7a402f8d0b167b84063ac43a69b63974bec2"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.67/ChoicelyShop.xcframework.zip",
            checksum: "f6875b42f43f66c9d88f9a925e5012f9aaf582fc1db6fc62fa6278864226aefe"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.67/ChoicelyAd.xcframework.zip",
            checksum: "484ca09446201d0229c009b301a8d435fc728e76ecc1886f406dd7bbedba88df"
        )
    ]
)
