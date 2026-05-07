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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyCore.xcframework.zip",
            checksum: "4b03be1617e68cc65f9e43c599d6f9a9974b79e47a535e05fa780524194ae4b3"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyMap.xcframework.zip",
            checksum: "6804267e576ffdb29940b76279ae2e55cd9b726f1a46c4dd0a3824e1ea9d0aa6"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyFirebase.xcframework.zip",
            checksum: "f4db4d11254e8437cb5c401bf731b32ab27225e1be9f27ca4034836bf5b639c4"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyShop.xcframework.zip",
            checksum: "92adf943f7cd7cdc8a15a5bfa6a9be37170704d13c171c671eb2519227965e07"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "b35485bdc5f471c058192d0c0fa6957579a3f18b01f40d72ff4d1571fa616a29"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/hermesvm.xcframework.zip",
            checksum: "917e134fce50e1d022251b3b425c2f6743a00576b12d27126c0fc6a79dc34c25"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/rnllama.xcframework.zip",
            checksum: "90ab341da8d16f8cbf4c92112ed6cb912f4265fbeda45a3243a4091edc94662d"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.0/ChoicelyReactNative.xcframework.zip",
            checksum: "e5be8c9921d06d70fa0a10768c22350d1d892050ce93a67f46e1616472d0159a"
        )
    ]
)
