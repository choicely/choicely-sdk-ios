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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.2/ChoicelyCore.xcframework.zip",
            checksum: "31fe024f9320274697a8756d80f3f4c7a8410577bc539bd5efaded24cc55b55c"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.2/ChoicelyMap.xcframework.zip",
            checksum: "d6a01edf765eacf440b1425231b4dd11ddac34ed2089305b73d68d1fce511485"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.2/ChoicelyFirebase.xcframework.zip",
            checksum: "ceb67a1f1c8cfc42d6bf37020e386a1272566084e1a028339bdb067c1ea20a70"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.2/ChoicelyShop.xcframework.zip",
            checksum: "1e3e551a70ae8fae2213f7c3e9cc9e8ebd18683deafaa06b3e179a0b49a4e43f"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.2/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "cc95b827381375e92274d155bd3c0a666d73b352e9e73e6245f701b4c74dd30e"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.2/hermesvm.xcframework.zip",
            checksum: "037b613444922364f20ca4324ad54f3501414c398f796ef3c5a7782f9417bc0a"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.2/rnllama.xcframework.zip",
            checksum: "134bb5bf8e4eca07b2be00009259dd8bc3fa51c54cfabe7024f9d2e87562bb62"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.2/ChoicelyReactNative.xcframework.zip",
            checksum: "8513afb093725220f5868c67eb238cda8dac1db1bf902c966c7e420747acf146"
        )
    ]
)
