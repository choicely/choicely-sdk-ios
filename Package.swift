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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.0.3/ChoicelyCore.xcframework.zip",
            checksum: "20321dbe23f19a57c77fc19df96e21a6f38f34d0145de1a63ae592130291a954"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.0.3/ChoicelyMap.xcframework.zip",
            checksum: "c02ef3a5d0a0158fab529f0d6b39214de7e7a9b2be39014e2435a7a8aa1a8bc0"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.0.3/ChoicelyFirebase.xcframework.zip",
            checksum: "58555bb16cc59fb6857c1183c8d9755e5c6e4ed8fb1127ef9afb1614c6bfc7fc"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.0.3/ChoicelyShop.xcframework.zip",
            checksum: "f0800ec127efc349b8c39d2a7388dd42bd0c537e049185de43d1486db5877791"
        )
    ]
)
