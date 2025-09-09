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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.64/ChoicelyCore.xcframework.zip",
            checksum: "9cef89f770b1b0dd968ef609937719d8fcf6366c0aae8ab68ea3c17982083f6a"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.64/ChoicelyMap.xcframework.zip",
            checksum: "1dccd2a9f3823dc65c95afd2162dd02f7f50192357559717573bf30fef9844be"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.64/ChoicelyFirebase.xcframework.zip",
            checksum: "1538e05f7c1f86be59d2735fb7a24c44bad136c7e18f527392461a2973b8d5d3"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.64/ChoicelyShop.xcframework.zip",
            checksum: "859b6dc7a6a63152f3419bacd2395459adca8d1d4608d1ea0ebc99bee6140467"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.64/ChoicelyAd.xcframework.zip",
            checksum: "64b962abe53d0c43587643a7ce3679898e5b75fd705d523830f03c2595d689ab"
        )
    ]
)
