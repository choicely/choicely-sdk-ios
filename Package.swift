// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "Choicely",
    // A version string, not `.v17`: `.v17` needs swift-tools-version 5.9 and this manifest declares 5.5.
    platforms: [.iOS("17.0")],
    products: [
        .library(name: "ChoicelyCore", targets: ["Choicely"]),
        .library(name: "ChoicelyMap", targets: ["ChoicelyMap"]),
        .library(name: "ChoicelyFirebase", targets: ["ChoicelyFirebaseSDK"]),
        .library(name: "ChoicelyShop", targets: ["ChoicelyShop"]),
        .library(name: "ChoicelyAd", targets: ["ChoicelyAdSDK"]),
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNative", "ChoicelyReactNativeEngine", "hermesvm", "rnllama", "libavcodec", "libavformat", "libavutil", "libswresample"]),
    ],
    dependencies: [
        .package(url: "https://github.com/layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "https://github.com/Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28")),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "11.10.0")),
        .package(url: "https://github.com/firebase/FirebaseUI-iOS.git", .upToNextMajor(from: "14.0.0")),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", .upToNextMajor(from: "12.0.0")),
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
        .target(
            name: "ChoicelyAdSDK",
            dependencies: [
                "ChoicelyAd",
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/ChoicelyCore.xcframework.zip",
            checksum: "a83eaab675e4ba0d380608ef6238a049b068a70d289f70a95e19198fa6e1dd8a"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/ChoicelyMap.xcframework.zip",
            checksum: "f981ce50016352431a780a3019348c4035a99d59baa39f0a087d7fd6ece46656"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/ChoicelyFirebase.xcframework.zip",
            checksum: "afef25b1639097f2fce433fda2f33aff290a7b88260c60e31f57541d6e211b41"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/ChoicelyShop.xcframework.zip",
            checksum: "bb71e8141e6fa29b0e1ba69727e3fd110de20abf98462b9ebd6a80255ecef584"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/ChoicelyAd.xcframework.zip",
            checksum: "c8b421e769cf963753550334906e7dc13415233ee4df2d739f3471ef82493eeb"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "23850f599caaafe8666bfd34f0f66e21dd8f9ba88fb90d7e0c93ae0437cbdfbb"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/hermesvm.xcframework.zip",
            checksum: "fb55692e95d2ba771413b47861b23fca8b7b2b256a9e765a260e32a715ec3cc4"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/rnllama.xcframework.zip",
            checksum: "566d3b171252e6a4484eece7f51eb9d90677d5152841bd15b9ac64745c000830"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/libavcodec.xcframework.zip",
            checksum: "84c1b79374bba8e0af7ce88ba1e6247f31947eebf070c317ebee9f6bc22af1b8"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/libavformat.xcframework.zip",
            checksum: "b9a1ff4600cbd05a6aa4b4f168150f8683ee97f639b72adf354b0e8abc534adc"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/libavutil.xcframework.zip",
            checksum: "c98b44c74b112f47b7e7ce9a051f1e0576db298bea9a79fd3112bc4504dbede2"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/libswresample.xcframework.zip",
            checksum: "abdcc503ccca9b9ca8e853f147ee4f7b8cd643cad89c2aa364a18b3de22b45b5"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.1.0/ChoicelyReactNative.xcframework.zip",
            checksum: "96b67efc93bb701b0e22153387919e5ffa17ff0ec1830a062dc75eaae51a7506"
        )
    ]
)
