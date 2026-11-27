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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/ChoicelyCore.xcframework.zip",
            checksum: "e0571d974b469d285bb8d61cc6fa99cfd9fb8e9924eba55de0bb35e0a21dea9a"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/ChoicelyMap.xcframework.zip",
            checksum: "761d234d9528fe82b411b1f54932bcd48403a7e10a98577d48132cc38368714b"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/ChoicelyFirebase.xcframework.zip",
            checksum: "b1c5dabfaff17dcf0eb655744284681b35a55b3d1600c370fc3c447c0013ea11"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/ChoicelyShop.xcframework.zip",
            checksum: "7cb00373e389780781b513f699b63e5fce358a9777529509ecc02d539dcf95d5"
        ),
        .binaryTarget(
            name: "ChoicelyAd",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/ChoicelyAd.xcframework.zip",
            checksum: "cccde9341e9c40486d9388edf097517934e448ee6dc5a0d5f78c889706526c78"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "c742ddd27e052a0dd82d4a5c0197393099f941e27eca351009899eedf85b53bb"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/hermesvm.xcframework.zip",
            checksum: "6b1ee2ff6daa5f5e86fb6eb3e2309d35c3520dd8e7aca3c54214a1acc321acfa"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/rnllama.xcframework.zip",
            checksum: "d053c2d8d24a963d2a3887f2928ce67f389d2d320e7181fa335feb309e29a310"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/libavcodec.xcframework.zip",
            checksum: "feb8960943021d5e408993409ae901a57aa0b70d8dfc6e52e856366314bda220"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/libavformat.xcframework.zip",
            checksum: "3a4d7c7fd32ac327e6b5941513148403cb7c5bb12c89fe05d392a5165c692c9c"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/libavutil.xcframework.zip",
            checksum: "58be36aa9558cf2187bd09e0d23ffef4828affa76b85400793d63fa700c9c08b"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/libswresample.xcframework.zip",
            checksum: "8b630d71245c3713cd87dd2524441913a491f7168211b3aa4a86433d70376281"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/2.2.0/ChoicelyReactNative.xcframework.zip",
            checksum: "3360bc704c514538468524421d75aecee447fb65b50ca6072e4d3d9ceea38963"
        )
    ]
)
