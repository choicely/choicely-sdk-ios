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
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNative", "ChoicelyReactNativeEngine", "hermesvm", "rnllama"]),
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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyCore.xcframework.zip",
            checksum: "d046a0035f778873cb85e199de1db8f55f415710085211aaa4db167457a4f9d4"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyMap.xcframework.zip",
            checksum: "2006417aedd1451bf90056ad16c0d824f93d712e0898100fe55d0705b3793860"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyFirebase.xcframework.zip",
            checksum: "e4e1ba59517744d40f9b330fd4e5817dc4b8369b909e679b918e571a57060f3b"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyShop.xcframework.zip",
            checksum: "929f39dc280ba94399392b08cf6cee6f96bc1b842697295fec036e8ce80fa61c"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "8172c9437a02ed41f4a3344abfcbec51bb28b62a1808c8bd789f20073c178b5a"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/hermesvm.xcframework.zip",
            checksum: "149f9cc936fcc8afce0401e9ffc24c0b0bf0eceb6942ce8ef9c9c3af6b086634"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/rnllama.xcframework.zip",
            checksum: "7a4240742b213ed7186418fb72d3571fd4505a80b401771913ad55aea553e67b"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyReactNative.xcframework.zip",
            checksum: "c401653f1ea6f367bd5b7b64fcaede47106be7a4f7b4a4a818a3485a19987e1b"
        )
    ]
)
