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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.9/ChoicelyCore.xcframework.zip",
            checksum: "e9a07a2e1b20c94d956d975f2efcad97dbb7c4b7051195fa976d0cb9d62de34f"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.9/ChoicelyMap.xcframework.zip",
            checksum: "0accdd4b437a47fe48c3a291d4696b60a643540eee44a8638bf1efd56f9b2078"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.9/ChoicelyFirebase.xcframework.zip",
            checksum: "e1c7e466210c584e1562960906c2aac71891c42ace903324e00e9c702c8faf8d"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.9/ChoicelyShop.xcframework.zip",
            checksum: "2d7ec83790080b26415070cc7d982356afd90573080c14f092943e130e3ba969"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.9/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "496d19f583f6e7d7d43771d20e76f9522777046d7dfa10679f034479022b7e29"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.2.9/hermesvm.xcframework.zip",
            checksum: "20a73e11f36b09827154ee93ca551bef5d58c5003ba625acacd66aabe835bd95"
        )
    ]
)
