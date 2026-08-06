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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/ChoicelyCore.xcframework.zip",
            checksum: "e9d38fbddf124e047621f4f15727d701a569d40789d46bbecf56321b83f14c9d"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/ChoicelyMap.xcframework.zip",
            checksum: "00208a6a64f313c1d5eaf3c16969f09da82c1133bdff8745f4f42fa687cff7be"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/ChoicelyFirebase.xcframework.zip",
            checksum: "8f92eba1802f98798a537105528824deb9044d5818e3fa43e0b0fdab4a9c64f8"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/ChoicelyShop.xcframework.zip",
            checksum: "f7d434d4cff81725dae227d28ccfa7205c53282ab0c9d7fc55ea47e214b4cd8b"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "219ca5853b75c19097156444b37a385c6eeee535c6640bb6cf457776a91c930c"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/hermesvm.xcframework.zip",
            checksum: "aa92765480f39839c3eaf6f74669229745be051f9f77e5ceb4228447fb382bcd"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/rnllama.xcframework.zip",
            checksum: "e13bf7e2ce623fd867be15750bbc18285cb8756f715def07f5e7fed963d025a5"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/libavcodec.xcframework.zip",
            checksum: "97f5851676d7af8d7c557017700a4eb4638394676a3b887664905ee5d6949550"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/libavformat.xcframework.zip",
            checksum: "f793bbf0d4dcac01be153e7acd8cc6b4cb833fbcd7bfd77017cf5451e85773b4"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/libavutil.xcframework.zip",
            checksum: "1a4299df35ffbda8244994a10272be62aa3132909471cea8fe61e514af628e5c"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/libswresample.xcframework.zip",
            checksum: "4cd5c97ebfc566b6411ae23a7e64dfe816587dc2e13c21a73636f3252afc2823"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.11/ChoicelyReactNative.xcframework.zip",
            checksum: "cd8c27e92f6e92ccc0f7ee6e0001df52b8aeaeeac55bef4cea0cb426a88aaf8f"
        )
    ]
)
