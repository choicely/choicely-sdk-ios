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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/ChoicelyCore.xcframework.zip",
            checksum: "fd41a1cd93bfd15d13fa98a0a0e6f1808a641bb328a28e0f9833b52f3cb7dbba"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/ChoicelyMap.xcframework.zip",
            checksum: "66002be0b52942ab3e71dfc0f4285a4c12dd3513a7008dd642071d5bd7ef50bd"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/ChoicelyFirebase.xcframework.zip",
            checksum: "6d23416b8d96982014f50a1acea287296f0041f0514e26aa2601012f49a88f06"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/ChoicelyShop.xcframework.zip",
            checksum: "517e01bdfa0d94fa623f3e59c799d679c762fd4231e5af20d6224daacda2c878"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "1ccf50e70c9be07c867fa29847bc9b6f9869eaf01579ab0a687e343a1110ff76"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/hermesvm.xcframework.zip",
            checksum: "c2eceaf5e9aff3bbb2112f7936494addd0f84d56bba14dbcb00058fc9c970ecc"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/rnllama.xcframework.zip",
            checksum: "f8ddb8b779ef614f6e5f19c338b77017d95ddfd30fe6376facec4be60726aa31"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/libavcodec.xcframework.zip",
            checksum: "a4cc7205399bc14bc4ad2e65085c94caaf1d2ac4de02dee9c1d12f5f5280fd30"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/libavformat.xcframework.zip",
            checksum: "d52c50f0c840cab1565f21332d11c63d6f4c56852832a9147f4deed53ac7bd66"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/libavutil.xcframework.zip",
            checksum: "1a75487f3502677baeed76cef024e2465f92aa727a96eb1d84e99822cd24b909"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/libswresample.xcframework.zip",
            checksum: "b2b9c83ca7dd9e57a4fa66c3b8d9dccb75c302b0fce75079581892898e9ba725"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.13/ChoicelyReactNative.xcframework.zip",
            checksum: "4b13c0d5e4bf0c7270c34b3643f8a2f2bd3d03d75d54b27b25b0ad36c4b1d8ef"
        )
    ]
)
