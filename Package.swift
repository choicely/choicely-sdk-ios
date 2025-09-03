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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.50/ChoicelyCore.xcframework.zip",
            checksum: "ad66f88ec22210b627d9dcb522c6d7c3c10dc921784b8bae1f3721bc52065d44"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.50/ChoicelyMap.xcframework.zip",
            checksum: "c7498ddbc942a3e63a383e12d1c4cea444951999c77bc7462fbfd6996c2f2eb4"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.50/ChoicelyFirebase.xcframework.zip",
            checksum: "a88622af095fc0355cb82a7418d5e01a0bc01a94c44a7bf9e64be6a4f3a9f94e"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.50/ChoicelyShop.xcframework.zip",
            checksum: "a5e66f192c72088294188b63caec0c8e50acf33af023e36707f4d92bc0797918"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.50/ChoicelyAd.xcframework.zip",
            checksum: "ac52c8e2e81d7b435efc6601077601f95e87350016944367d3fdb189bea04504"
        )
    ]
)
