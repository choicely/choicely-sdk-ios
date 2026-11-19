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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/ChoicelyCore.xcframework.zip",
            checksum: "abdabcadd0b1eecdf4325dbb5632ac77235d082aa3dc20af5942c499bd144bd6"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/ChoicelyMap.xcframework.zip",
            checksum: "4f59735da3784584d474e641e5a06a5f2983d3580e68eb3644c199e7896eb35a"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/ChoicelyFirebase.xcframework.zip",
            checksum: "4e5bcd8ffbe00e6cc63f5292e314cb08f431ae62361beb2ec7d494bc1d4301fc"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/ChoicelyShop.xcframework.zip",
            checksum: "99dd765c28c6e5cad4e0cdcafcd8a9cfe1201bfae337391b4b7d6bcdcc442b4f"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/ChoicelyAd.xcframework.zip",
            checksum: "268457d375a810ea2778bfa6e38d8d57879a26ddc5635fcbef6ffcda4e3a9a66"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "30d4de7c5a0315bf9cca7ded6d7f266f8e10d1cba05457a15daba8b1cd8b45dc"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/hermesvm.xcframework.zip",
            checksum: "8ab74da4d50db61b5a9ec1d0196a434e1f81fd0d6923fe58016d6a2617996165"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/rnllama.xcframework.zip",
            checksum: "5802a65d0018159b10aad2b365d4c3308353096c4c6ecc17b6d5c114a9da4110"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/libavcodec.xcframework.zip",
            checksum: "459900138c0d2e4253596fd3561cd3f660f8c76b82702bdc9694a6fe9f1a7e22"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/libavformat.xcframework.zip",
            checksum: "e10abf0df3b265cb9b9a245a68c10f62c9e850cd77dc08c97742f24387438397"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/libavutil.xcframework.zip",
            checksum: "7315216b68da8154b598d7c33aa93b30b49e31b6e2e7c3199335959ee2189ef9"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/libswresample.xcframework.zip",
            checksum: "1b1dda911e9f81bd50039ffe37aa1413a0af3526f5aa94b21078bbef6eda9fad"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.0.0/ChoicelyReactNative.xcframework.zip",
            checksum: "91834390051228d5977ec420119b1ad17a77e69173d5cc77a4255c4515430355"
        )
    ]
)
