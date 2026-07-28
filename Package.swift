// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "Choicely",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "ChoicelyCore", targets: ["Choicely"]),
        .library(name: "ChoicelyMap", targets: ["ChoicelyMap"]),
        .library(name: "ChoicelyFirebase", targets: ["ChoicelyFirebaseSDK"]),
        .library(name: "ChoicelyShop", targets: ["ChoicelyShop"]),
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNative", "ChoicelyReactNativeEngine", "hermesvm", "rnllama", "libavcodec", "libavformat", "libavutil", "libswresample"]),
    ],
    dependencies: [
        .package(url: "https://github.com/layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "https://github.com/Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28")),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "11.10.0")),
        .package(url: "https://github.com/firebase/FirebaseUI-iOS.git", .upToNextMajor(from: "14.0.0")),
        // ChoicelyCore's module interface imports RealmSwift (library evolution
        // exposes internal imports), so consumers must be able to resolve it.
        .package(url: "https://github.com/realm/realm-swift.git", .upToNextMajor(from: "20.0.0"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: [
                "ChoicelyCore", "FlexLayout", "DTCoreText",
                .product(name: "RealmSwift", package: "realm-swift")
            ]
        ),
        .target(
            name: "ChoicelyFirebaseSDK",
            dependencies: [
                "ChoicelyFirebase",
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFacebookAuthUI", package: "FirebaseUI-iOS")
            ]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/ChoicelyCore.xcframework.zip",
            checksum: "2485ccfdb21d2bcdfc9fd65ef1f9e8ac2f6f727dec015b9c4e5b56aaded670b5"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/ChoicelyMap.xcframework.zip",
            checksum: "d67110caf5a674fc7256190a821917040932988ec6b33f856e47a5e6a8d72f0f"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/ChoicelyFirebase.xcframework.zip",
            checksum: "556380492fd9cf3c2f1043cc24895077392a16239a02cc02454ea1e6420cfeca"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/ChoicelyShop.xcframework.zip",
            checksum: "89f6e826e55c46f61f04dae98ea9c87f1b4edbaedcf455810ae729550bd959bd"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "ed43c064cbc1ca6b9aec7c791db3df2150932ad4b5e58934b42770e3b3cdf802"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/hermesvm.xcframework.zip",
            checksum: "8ffb4aa0c1ab69a1edc047486c7eaa01063a8e11650f143970dddeee03004e3b"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/rnllama.xcframework.zip",
            checksum: "80c9759cee29b6a67f4aecd48b2bbf2a95383c1c021d00fccf5de1c6880a50a2"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/libavcodec.xcframework.zip",
            checksum: "a256247e1e651848048db0adaf10c9966cd0d6e72c5c6ccd71e5734ce6da287d"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/libavformat.xcframework.zip",
            checksum: "bb5080cbd6d619f642d2f11fddfa20bc1e7d0ef4b0ee7fd4d3e1c472a2d740a0"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/libavutil.xcframework.zip",
            checksum: "2224468ca0524ab980f492a4c59aa807b4331a96124fcb55bf2132d22ca2a7d7"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/libswresample.xcframework.zip",
            checksum: "a74d6c558ffe0877cc1207c9421984a781352d158f18ae3d77380e695aa9cdaf"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.7/ChoicelyReactNative.xcframework.zip",
            checksum: "6fc90bbf089fa4dc57d890781aa4bb3c8badd3bfd6c4e960c8eca6f43f59e4ef"
        )
    ]
)
