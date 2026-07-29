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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.9/ChoicelyCore.xcframework.zip",
            checksum: "1094ad0de2ef2d69a8b9c38a2601a383fcddd285be5bb57daf6c3d4888dafd51"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.9/ChoicelyMap.xcframework.zip",
            checksum: "93e8cbd03c09e5439d6dccbbbca97cadb737ab13c869cf0aa7faec2a4a8235de"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.9/ChoicelyFirebase.xcframework.zip",
            checksum: "3573f87e2b2c2f04ee050e0b37e1115a6fbdf3ec21d365e0bd960b452fa7bffd"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.9/ChoicelyShop.xcframework.zip",
            checksum: "717747661564019b5b7583c273bbd325c182f99096ff65b8b622de1a25f1c672"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.9/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "f38830c9b1c706cea8a909f74452646f574af4bfb38fa03fe215f9426b424dc4"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.9/hermesvm.xcframework.zip",
            checksum: "9a3ed79c976e5aea88a023e868d86c7e7d3829d84491411c13b4fcf3df8bbdbe"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.9/rnllama.xcframework.zip",
            checksum: "e5caaf05474b66f0a085fc9745e0e42ce2de8cf7ed41d0664528fab6a363020b"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.9/ChoicelyReactNative.xcframework.zip",
            checksum: "84fc4396b27fdfb2365080f34a9a939c123c6beb954f2042dcde8055db43439f"
        )
    ]
)
