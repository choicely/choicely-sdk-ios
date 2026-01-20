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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.5/ChoicelyCore.xcframework.zip",
            checksum: "6deba3754a7600a9ae0bb4ed7bce9d294c6c22fb4a36dc33a6ad577add6da09b"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.5/ChoicelyMap.xcframework.zip",
            checksum: "c921228b09b18fa5d044a9cac0956225c374467d34a9ab0975a0b3822bc28e47"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.5/ChoicelyFirebase.xcframework.zip",
            checksum: "846e8786856fc1692f92f876cb4d05bc5db60a554f81864c2920e909847c485a"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.5/ChoicelyShop.xcframework.zip",
            checksum: "db83aaac86f1cb7e4ef073a2984b39d1b8baff22c06d4c74e291be6601c78bac"
        )
    ]
)
