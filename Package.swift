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
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNativeEngine", "hermesvm"]),
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
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyCore.xcframework.zip",
            checksum: "70216c17bcfe1317376f1d97d4b9c708cf87c081c21688614607d8f6ca48bc05"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyMap.xcframework.zip",
            checksum: "ec8213d346af3e5e4394c783a2cc9beb0950b93c7553f3af8150f356502e07fc"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyFirebase.xcframework.zip",
            checksum: "0dd0ef3eeddb6be7db674379d28684524046034fe2021ebbd7d613a607cd5577"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyShop.xcframework.zip",
            checksum: "9818429a06d4fa511583efaffce8869c6a523083122805f9f4bff83ad1e81a9c"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "aa4e636455002e55d7f72d5dd448e04e92da56593670fc90bfbf23aaa1fa4d0c"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.7/hermesvm.xcframework.zip",
            checksum: "10c1101beaa2700f485238beb4e2c42cd856e88cb5cb0aebb89f78b29a21ee8d"
        )
    ]
)
