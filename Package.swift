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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/ChoicelyCore.xcframework.zip",
            checksum: "abebd6127a3d75454794772ce4c826b8768b22144fa23dc8afb9dd4d85fa9dbf"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/ChoicelyMap.xcframework.zip",
            checksum: "514f88c94da7b24add2f7a7b646e6b667e504608e23c27723d0a1fbbe0af61f7"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/ChoicelyFirebase.xcframework.zip",
            checksum: "844e24d96d74c6102c695273a9fe21c5f76867eb7d091f3a153d030dc330876b"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/ChoicelyShop.xcframework.zip",
            checksum: "f7f20466e51aac4209a1cfae6bb80e1e8da77c3993d7945db39791801c381239"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "9ecafae2c053a39e3527dfc737eace7486888af8622158c815df013a053f2b6a"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/hermesvm.xcframework.zip",
            checksum: "2adfdfaa7069bc5553bf261e25337dc09061963f389a73dec37b56ef50481be9"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/rnllama.xcframework.zip",
            checksum: "17f6d42edde6c20623468628726b1ea73b4524a548904fcdd16b72c159681cf8"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/libavcodec.xcframework.zip",
            checksum: "9cd92ecb5a27d9fabaf084a748116d4b20ec3b840862179b19a111a923df0d6b"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/libavformat.xcframework.zip",
            checksum: "d65e39564146d2a942cf192ca03d43620a4bc5451ae9d09caafb94e471065332"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/libavutil.xcframework.zip",
            checksum: "ececc5c50d2cc85a1ea8624b7f1070ba44e3cd60cabc1781687c6d2cc0e98245"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/libswresample.xcframework.zip",
            checksum: "1d00adef697488ca448738c18145c1488e2079ff979d37adbf4d575caf81c449"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.14/ChoicelyReactNative.xcframework.zip",
            checksum: "576e8548cda3995b2de6c7db6547cd5c5cbe0d7715ac9e10fb74a9cd9bd8d618"
        )
    ]
)
