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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.3/ChoicelyCore.xcframework.zip",
            checksum: "5d09f402a3227925e719aac59f469770a95db0f51fcdeb57991da62ebfdceeec"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.3/ChoicelyMap.xcframework.zip",
            checksum: "ca66ceedb4870d525ad0b3e46c8a50e853a59efc592b85a121fb56f79e5d8387"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.3/ChoicelyFirebase.xcframework.zip",
            checksum: "1450dd57ec4462b55b07c3973c750b84020ca8986de2571e5b3a872b1793d2da"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.3/ChoicelyShop.xcframework.zip",
            checksum: "34a825c3dae4f74e3d0003afcdf2d7ff8b9e9f8a542d2dde19f61b9ce921daff"
        )
    ]
)
