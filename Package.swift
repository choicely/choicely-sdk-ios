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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.42/ChoicelyCore.xcframework.zip",
            checksum: "275581a72a717ae12a9e75315072b42d677717e3058b9352628e4f16eaff2b3d"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.42/ChoicelyMap.xcframework.zip",
            checksum: "cfd9cb9b2e50e2f0a39a6dd9af157eee6dd0af136522ef53bf1489527878d6d9"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.42/ChoicelyFirebase.xcframework.zip",
            checksum: "ffba65df113ecc3635385f3a2516aa19892f74be8eaedfd8dce8e8d2d8cbee77"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.42/ChoicelyShop.xcframework.zip",
            checksum: "474cd77bb3f064e4befd3422dd4fb5ae9ba77b1c53545d81dca55634c8d21c16"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.42/ChoicelyAd.xcframework.zip",
            checksum: "2f915fb67076241cbf1532312d37429e1e63bcd9197f4c0cf442f6b4d6f81df0"
        )
    ]
)
