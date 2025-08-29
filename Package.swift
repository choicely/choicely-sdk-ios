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
        .package(url: "git@github.com:layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: [
                "FlexLayout",
                .target(name: "ChoicelyCore")
            ]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.40/ChoicelyCore.xcframework.zip",
            checksum: "ba903509ffe8bf5b592a1443e0845ed69c3334a7a5c2317f88e876a307a0ddb5"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.40/ChoicelyMap.xcframework.zip",
            checksum: "679a54752a032207b558ffec4d658db6125ca85c6012a9c86fe43a8baf36e2e0"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.40/ChoicelyFirebase.xcframework.zip",
            checksum: "78f59732d14114affa832bac4ff12462784c5f663df731d4de2d6245b8b73e84"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.40/ChoicelyShop.xcframework.zip",
            checksum: "0a35b57d365de807029832684c976a03a1e7faaf38ffda769f806a976aba156d"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.40/ChoicelyAd.xcframework.zip",
            checksum: "81d4331e5b86a0a0b598fe5d017e68e3d7e3ce7acd9f3b4774c805bf7904ade8"
        )
    ]
)
