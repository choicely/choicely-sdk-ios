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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.0/ChoicelyCore.xcframework.zip",
            checksum: "2271dc4561212c5b895c851c14685dad270e170115f903e3e36f4955ad56f66c"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.0/ChoicelyMap.xcframework.zip",
            checksum: "0717cdaac4ae9eac673e978e7349fb52bffc7e60effc9e2133d010b817008e00"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.0/ChoicelyFirebase.xcframework.zip",
            checksum: "38245cd8c564c88cde886f3995325a36a0fc48074ee6b5a1b093c098c6722ffb"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.9.0/ChoicelyShop.xcframework.zip",
            checksum: "debd8468a68c7294cc25be49bbc166b9c4974372766e5911a953631e7c82dffe"
        )
    ]
)
