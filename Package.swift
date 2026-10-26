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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/ChoicelyCore.xcframework.zip",
            checksum: "54180b0216d03e13dbb67d210a2f78623049d9d5ef7153d5bb4e71b9e30277b5"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/ChoicelyMap.xcframework.zip",
            checksum: "3a91881479c344796de1218ba94c336158617e557f10f4001e62776435632e77"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/ChoicelyFirebase.xcframework.zip",
            checksum: "26032af5591d3fc95441fa125b2daa421ca4f6f3e4c01c58d6fe27a16660328c"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/ChoicelyShop.xcframework.zip",
            checksum: "e7451bd17486b2f69a879943d70ff4f6a6de649e69f0aea87a64bbaf9bf67600"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/ChoicelyAd.xcframework.zip",
            checksum: "e3340f5b24c88b01b36ae3d1096bcd14baccaef6889cd7e4fa9789d94befb17d"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "c05ba41a57ab288c31b5196fce84e523ac131ea2c4958935ad1267d8ab12e3d1"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/hermesvm.xcframework.zip",
            checksum: "83cd95e968700efa3c05ae9849437679ca4706b1216600badc91c9cd6349354e"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/rnllama.xcframework.zip",
            checksum: "67985c56a02a4a11b19ca89e36d61352db87a547113859f280d72ed654cc098b"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/libavcodec.xcframework.zip",
            checksum: "eb92238e8c80412defb0bc9781a13c7cbaaaf9c0f11b7d78b9b4ccad3237e472"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/libavformat.xcframework.zip",
            checksum: "ceb03dd027b18d7c1388f22098eb3f126ae1f60e84c05cacaf4985e2d0776f0c"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/libavutil.xcframework.zip",
            checksum: "0a8fb6f5b1547280319506f24f2732aa59505ce4203ba9b01fd8d96c50898e2e"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/libswresample.xcframework.zip",
            checksum: "c3592e1f03f41f5378bc2f58588231eb70f1777ede242d84537910c5ccfb7092"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.17/ChoicelyReactNative.xcframework.zip",
            checksum: "a165d4db0907e2c06c9205b2b3aae1e665fcfdd060281bcdc5426ea4a9750204"
        )
    ]
)
