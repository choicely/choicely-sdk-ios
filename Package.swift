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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.11/ChoicelyCore.xcframework.zip",
            checksum: "281d8d8258aab4020cb816d9f8259564a8025124d64441cafdcbf4b923ca78ab"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.11/ChoicelyMap.xcframework.zip",
            checksum: "c4d4bb99b10538e570c3d191ab7fa0b445db88a36b9fb7a300760b7928454b41"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.11/ChoicelyFirebase.xcframework.zip",
            checksum: "4641fb6856aa7179ca992d7ef7c2cacd1174120a2edede1c34c2db34ef3174ca"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.11/ChoicelyShop.xcframework.zip",
            checksum: "d808c8b414cce2c3ff1b18960b94603a9e90a4b2fd15643c35c0de49168db499"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.11/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "96c8edaf99eed73a1271a530a6eec17839746a074c2549d9d563e97e72861139"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.11/hermesvm.xcframework.zip",
            checksum: "9a299770bb57fe01f90370c6e43f2504d3bbf66c022142fb6469ddf69947f126"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.11/ChoicelyReactNative.xcframework.zip",
            checksum: "81bfb6ea3fee094d7630ba24ea7583ba764d4abd9039dd8c8d203e9fe3c024d8"
        )
    ]
)
