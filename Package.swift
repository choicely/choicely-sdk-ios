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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.5/ChoicelyCore.xcframework.zip",
            checksum: "1f35cf082f62682e69e3b1d61bb6f9ea9bec286123f34472eaf95287e31ec785"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.5/ChoicelyMap.xcframework.zip",
            checksum: "69f06d972986ace50f6c223c89c00df91f7266c29e63c369bcfc7c68f6ef1908"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.5/ChoicelyFirebase.xcframework.zip",
            checksum: "a3cdc6b3d8b64a0adc56372c7f3da463f5a096ef82625abdaf05cf6b6be63961"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.5/ChoicelyShop.xcframework.zip",
            checksum: "a41f8a56c2dbf90f69db3a49171af87fe1ea8ec92b788a5129d124abb27b6512"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.5/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "25c750624c649da4ec6a93e2877025756398d1f77f5e5c16131f71b7b0de6445"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.5/hermesvm.xcframework.zip",
            checksum: "30126799d6c30536c4a662719a1ac575fa7618e71fa1d3a165b7868d2160ca78"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.5/rnllama.xcframework.zip",
            checksum: "40f31cbf49f7902590137993a57de32e8fb4069b0a9e43580df02d87acfc33f2"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.5/ChoicelyReactNative.xcframework.zip",
            checksum: "72b75ce659951aec6ef24ef8621dd6b78a67f56ffa3fe7c330308a9571fcbffb"
        )
    ]
)
