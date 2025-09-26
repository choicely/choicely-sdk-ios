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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.0.0/ChoicelyCore.xcframework.zip",
            checksum: "8bec34b6df5e48993422a4485bdc71b30a8076eddcb99564dff082dc978bedaf"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.0.0/ChoicelyMap.xcframework.zip",
            checksum: "be9e86f985ebabc5d7f5c9b6b68ff0867fd7d23429d0922865e4678e16e9274e"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.0.0/ChoicelyFirebase.xcframework.zip",
            checksum: "1b1e18c3057c6e1b73fe236788ecc6c3abdf94db1df5fee94b289286d54b85b8"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.0.0/ChoicelyShop.xcframework.zip",
            checksum: "3da30af21ca1950e4f1a7fc01a0aca39dcb8c42c6fd0c9a6648c3229c1a672a1"
        )
    ]
)
