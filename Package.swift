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
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNative", "ChoicelyReactNativeEngine", "hermesvm"]),
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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.10/ChoicelyCore.xcframework.zip",
            checksum: "e379f5a115176836da3d406f3e297fd21427572beaa8230f01a6490b27372f80"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.10/ChoicelyMap.xcframework.zip",
            checksum: "f8312a2389ec63491965af038be8bf7ddd23e8c62348ed8834780fc59c4cfc13"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.10/ChoicelyFirebase.xcframework.zip",
            checksum: "61b2dbbd3cc95402f0df00f09f3703bd38bcd7d9c48ace23c822d52073a4976e"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.10/ChoicelyShop.xcframework.zip",
            checksum: "b36b26203a355c8428d49f6347bb4ee2fc17ff36ff47aa114e36f1dc56c329b7"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.10/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "77b062867ae526400749e6e6e1d0ee21d4ad50eae9a7d140c1ee3734fe41d66b"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.10/hermesvm.xcframework.zip",
            checksum: "1de8e78ab8d7545497c94a9a6f5f5a629bd2cb12e4f9acdc78efc9a388279203"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.10/ChoicelyReactNative.xcframework.zip",
            checksum: "8d1fec7a86f2fb4fb96a8615df1a455bb0aaad20b2ec7f2e868c708e1a3009d1"
        )
    ]
)
