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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4-alpha/ChoicelyCore.xcframework.zip",
            checksum: "4508669d997c29b8c0dc41f7cf48b3105f9a491181d0a17e0ec90823700ae30c"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4-alpha/ChoicelyMap.xcframework.zip",
            checksum: "b4a57ed0321d5897c9eb45ee5ed57cb9748b978c86aebf49370d303756589a40"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4-alpha/ChoicelyFirebase.xcframework.zip",
            checksum: "7c42641e4622d9ebf4ae5b3687e5fed186bef62059aabf2c214bc3a79c6575ef"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.1.4-alpha/ChoicelyShop.xcframework.zip",
            checksum: "34d36018a3339e00577c9aec944ab11bdd816b25a7ce358813f1af7bce91104b"
        )
    ]
)
