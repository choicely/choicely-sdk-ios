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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/ChoicelyCore.xcframework.zip",
            checksum: "5690161175df33d2018a4e62df4378c39e737b5c979a1ab454096173c5c64d82"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/ChoicelyMap.xcframework.zip",
            checksum: "f9c4cccdf5feec96bfd1feb5892aa501bb29ad3d7ff6c7c39b6e5e7bd7003a2a"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/ChoicelyFirebase.xcframework.zip",
            checksum: "830a49690f25d49c731164050f8a27a0b17aa79850e29cabc2e25eff3494f02d"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/ChoicelyShop.xcframework.zip",
            checksum: "1156742869d321a238152111c9a21d15ecd8f9ceadf577ee1ee6d46b8242fded"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "d21e157d84224059163b53c70b1e9b7b0036aa5e6a8d77eff356577e6cc6d681"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/hermesvm.xcframework.zip",
            checksum: "d633ec48e97b2ab9d07c3eac5939a5599c464dde95c37df5abc837b66a42d7f9"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/rnllama.xcframework.zip",
            checksum: "2b61a16e12ae3918bd7b3ef835bb7b073a54dd88d3800568b6a8d504a076f6f0"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/libavcodec.xcframework.zip",
            checksum: "6d04703c5475c6334d7aec4dc9ed18f76711a906e708547e39737405d6e61d12"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/libavformat.xcframework.zip",
            checksum: "e00454efb5b149ab879e7b4c5d53c81c56ed8089a09c6c1b94b5fdca1360693a"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/libavutil.xcframework.zip",
            checksum: "c5a7106c44403446e80e5a648848bfe5429dcc948a39c8f82647ea5ee54d0d70"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/libswresample.xcframework.zip",
            checksum: "81279a2ad60c7a52d97566b5a768f7d64835b46528a974b011badc3640aff864"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.15/ChoicelyReactNative.xcframework.zip",
            checksum: "93b64d93da8824b6381b370e229470248e81f47f7836a8656c7caca4fb77ebb3"
        )
    ]
)
