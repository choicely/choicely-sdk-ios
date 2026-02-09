// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "Choicely",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "ChoicelyCore", targets: ["Choicely"]),
        .library(name: "ChoicelyMap", targets: ["ChoicelyMap"]),
        .library(name: "ChoicelyFirebase", targets: ["ChoicelyFirebase"]),
        .library(name: "ChoicelyShop", targets: ["ChoicelyShop"]),
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNative"]),
    ],
    dependencies: [
        .package(url: "https://github.com/layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "https://github.com/Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: ["ChoicelyCore", "FlexLayout", "DTCoreText"]
        ),
        .target(
            name: "ChoicelyMap",
            dependencies: ["ChoicelyCore"]
        ),
        .target(
            name: "ChoicelyFirebase",
            dependencies: ["ChoicelyCore"]
        ),
        .target(
            name: "ChoicelyShop",
            dependencies: ["ChoicelyCore"]
        ),
        .target(
            name: "ChoicelyReactNative",
            dependencies: ["ChoicelyCore", "ChoicelyReactNativeEngine", "hermesvm"]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyCore.xcframework.zip",
            checksum: "b27df4b5202789ab8da36824b92359e9a4d25f4a6af5f930067c2b9c3f00744e"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyMap.xcframework.zip",
            checksum: "5ce4358c793f556a28a70e8747d6e1a9ae889027278ac9348b01a4f68112550a"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyFirebase.xcframework.zip",
            checksum: "388a6f8cdf5522b4a954c8e3d2a64678457643c63e8390c2131963708b78d700"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyShop.xcframework.zip",
            checksum: "6ae2aa4947cc6c308a6cac1add8a6fe41a32bd871228af3d7363671c08d078c2"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "850867c3e4dda6bc738b42dcfeba214037d38b4966e62acef79400989a046d2b"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/hermesvm.xcframework.zip",
            checksum: "da55419a7a75a1524861cc139515a148f0f9d7cd723cd7986e95097e46fcfd13"
        )
    ]
)
