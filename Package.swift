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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/ChoicelyCore.xcframework.zip",
            checksum: "c9d38d2e380e988e4de7ca9c1ec2367e0958191b4766553ac698f1d32fd6b164"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/ChoicelyMap.xcframework.zip",
            checksum: "d64ac84df07ed7d08d79b95f3ab420f8d023ffc2d10c1a4e240a06aa3656dbe9"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/ChoicelyFirebase.xcframework.zip",
            checksum: "49e65f6a792e1b29685363ee8b2e8acf4922fa48355ffa11e7f18c0d87ffd66e"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/ChoicelyShop.xcframework.zip",
            checksum: "5c1a49d57bb679a0886b610dbf3aa6854069c6c06599cac080e7e9d0db58d5f8"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/ChoicelyAd.xcframework.zip",
            checksum: "bc8a26b0aae543f7b19ad62bef833f1039978b0edefbce220a725fa41c60790f"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "28ff67b646c8924e6d55cad694687e483c6f23d8d40e7f9fb1af80d7118283c0"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/hermesvm.xcframework.zip",
            checksum: "39221f5f12ad59221e8161921da40d8dc07cff217495b6130fd3257d9beaf246"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/rnllama.xcframework.zip",
            checksum: "1c724ee4ffdf9e9ec5b45eea3198c7f55d8609c6228de283600518615dccf57c"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/libavcodec.xcframework.zip",
            checksum: "0d48dec7eb4338cba0dcfec175416ad628b28e04af608d8b164d52af5690443c"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/libavformat.xcframework.zip",
            checksum: "3146e8236462e54b7ba1ae0bc6597ba5fde87019c1bb6979245edfa6b5074efe"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/libavutil.xcframework.zip",
            checksum: "4a117c7c26adc6c9ee919427dfaa2ad78f0940408f92f60b4b26365ecd1a4090"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/libswresample.xcframework.zip",
            checksum: "f3029b54f1da39699720713855ae3a49ba76ac72b91c58900bf2c4d06039f3c8"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.3.0/ChoicelyReactNative.xcframework.zip",
            checksum: "55016047c0b15044c318d45035d30b9c673598a5f87b65a25b6b8193e0fcfbda"
        )
    ]
)
