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
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNative", "ChoicelyReactNativeEngine", "hermesvm", "rnllama"]),
    ],
    dependencies: [
        .package(url: "https://github.com/layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "https://github.com/Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28")),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "11.10.0")),
        .package(url: "https://github.com/firebase/FirebaseUI-iOS.git", .upToNextMajor(from: "14.0.0"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: ["ChoicelyCore", "FlexLayout", "DTCoreText"]
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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.3/ChoicelyCore.xcframework.zip",
            checksum: "8ac38b2dd9cc3126f5c39bed0888a0dbb0efb4a4bafc74fd651d955fd703f91f"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.3/ChoicelyMap.xcframework.zip",
            checksum: "fe781526c96e0fe029a4a9ec2e81900f3fb8fe32fa6dfa0837f52262c8ad21c1"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.3/ChoicelyFirebase.xcframework.zip",
            checksum: "a6017be086c80f57652e94479ddbf426b86854f3e45c6e4c2b179148a46897a1"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.3/ChoicelyShop.xcframework.zip",
            checksum: "44944373cc54ff2a43dd2e216909253f0119926eccdd12ee897b18967628d5cc"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.3/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "838400e4aba43a1a095fdd5237bed6d20faf866f25bc77d055a8d9536bf16fe3"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.3/hermesvm.xcframework.zip",
            checksum: "cbeec7f1c6011db741d6edb87aa8d50d87cbb1fdb0c39ec6e594300c7807c551"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.3/rnllama.xcframework.zip",
            checksum: "3d4b77aabf2aaaa7479ae6f60125f028c704b885d6484c0672d3b3b257ec02c2"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.3/ChoicelyReactNative.xcframework.zip",
            checksum: "1b9414d7238273f0768ec99ecb1c96ce5798c4d17b26ab197827a3f45b0dcb3a"
        )
    ]
)
