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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/ChoicelyCore.xcframework.zip",
            checksum: "2e67eaf7dbf5b7bf2333f07a09ded3707f81538fc3ff31a716923ee6dec15d77"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/ChoicelyMap.xcframework.zip",
            checksum: "664544b8b48d58db4ce28204aa511ab2ea003cfc1d6f6b952daa58d24aef4248"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/ChoicelyFirebase.xcframework.zip",
            checksum: "de6946abbf57c14818fe91e3a466cbf6fb89c089360cb2642c224cf20db11a3f"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/ChoicelyShop.xcframework.zip",
            checksum: "249e7425ffe66a37c397063b24475ed3361deafe5a55fc242050a38eaf3ebc0d"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "5d5371f9c1b1724c568a54ec230560d5f5333307b669e7224f2ce54a261089da"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/hermesvm.xcframework.zip",
            checksum: "f0579d5053a2460cccc29943bc8fd4aa20ff994a96448f93d854a41317d30ce6"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/rnllama.xcframework.zip",
            checksum: "fa5e26b0385b66f4f6142d2d4988c024bdf6d5164d50cb6480bb442a5004ee9c"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/libavcodec.xcframework.zip",
            checksum: "df3adfc7848a5b09eda9b71be1dade3a74d90d7a128a86b3f70364d8e611d55b"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/libavformat.xcframework.zip",
            checksum: "081245affdc181d0e026210428da6af26f1fde99e18704112c9edbd42a13dfb8"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/libavutil.xcframework.zip",
            checksum: "9bfb66edb9788eb57d08161e759547c5416c511349c07562bbbf7831863844aa"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/libswresample.xcframework.zip",
            checksum: "96f42792487e163e36917b6eebcffe978ab304db630e5f8ed7b24ca5217c59e4"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.12/ChoicelyReactNative.xcframework.zip",
            checksum: "c50c19ee97b4ca79127e20cb85e0662e6c255dcbccc320ec3bae64af6934885b"
        )
    ]
)
