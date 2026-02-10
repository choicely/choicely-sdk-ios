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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.8/ChoicelyCore.xcframework.zip",
            checksum: "5703045f4c7c53f08d3bd64ff3dbeabef89d2d06abe57638412e5d6c612b1a73"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.8/ChoicelyMap.xcframework.zip",
            checksum: "0dee61f206564ad5e5eb0734f0105781d06086cf6080153e3be520f210281d57"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.8/ChoicelyFirebase.xcframework.zip",
            checksum: "395f52947f6f60ff20caeb5c7adae1723e811abb9ea359589aa7e2c893425c47"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.8/ChoicelyShop.xcframework.zip",
            checksum: "75f0adad41a0aebff6cea1b2c0f0a6c8413a24564ab13f46d3ca79e79a9f752b"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.8/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "2c4c2b1801b37623416d9c2604b3fc63db74a1da8220e967169f1899c896502a"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.8/hermesvm.xcframework.zip",
            checksum: "2e442fce060c8133c2fa7717841ba7910fee3d83a3639e7dbdc016407b4dc229"
        )
    ]
)
