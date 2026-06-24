// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "Choicely",
    platforms: [.iOS(.v15)],
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
            dependencies: [
                "ChoicelyCore",
                "FlexLayout",
                "DTCoreText",
                // RealmSwift is linked (not merged) into ChoicelyCore, and ChoicelyCore's public API
                // exposes Realm types, so consumers must link RealmSwift. We use Realm's OFFICIAL
                // prebuilt xcframeworks (built with library evolution) rather than the realm-swift
                // SPM source: the source build emits RealmSwift's generic-conformance witness thunks
                // as LOCAL symbols, which leaves ~500 undefined symbols when an app links the binary
                // ChoicelyCore. The prebuilt binaries export those symbols globally, so the link
                // resolves. See the RealmSwift/Realm binaryTargets below.
                "RealmSwift",
                "Realm"
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
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.4.0/ChoicelyCore.xcframework.zip",
            checksum: "b8a27e23830cbe76b30849aaea8730a279418542221e66ca1503fcac0e0a3aad"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.4.0/ChoicelyMap.xcframework.zip",
            checksum: "a4b686d5743ee5770d5c1696ff4b8e06f7e480bffa50523aa8328523e0c94dda"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.4.0/ChoicelyFirebase.xcframework.zip",
            checksum: "663e933a8bcb33b79b00ab0901bbe6b9f5a994f3487289198b7505844d451c28"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.4.0/ChoicelyShop.xcframework.zip",
            checksum: "60eaf7c0ca43e952266bb55b3d4cf627fa3b5731294746808bf47c6f8d641589"
        ),
        // Realm's OFFICIAL prebuilt xcframeworks (library-evolution binaries) — see the note on the
        // `Choicely` target above. `Realm.spm.zip` is toolchain-independent; the RealmSwift binary is
        // Xcode-version-specific (RealmSwift@<xcode>.spm.zip): this pins Xcode 26.5. When the release
        // toolchain changes, update this URL+checksum to the matching RealmSwift@<xcode>.spm.zip asset
        // (and rebuild the Choicely xcframeworks with that Xcode).
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v20.0.5/RealmSwift%4026.5.spm.zip",
            checksum: "cfc9f0e708287cf8805bd01eddcdbd4cfe0a6cba9413ea391a99a77b4e913d93"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://github.com/realm/realm-swift/releases/download/v20.0.5/Realm.spm.zip",
            checksum: "3598552815548c4ef583e53ee84ffc3c8d2233fd0eedad1303f59f6ef5b798cc"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.4.0/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "__CHECKSUM_CHOICELYREACTNATIVEENGINE__"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.4.0/hermesvm.xcframework.zip",
            checksum: "__CHECKSUM_HERMESVM__"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.4.0/rnllama.xcframework.zip",
            checksum: "__CHECKSUM_RNLLAMA__"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.4.0/ChoicelyReactNative.xcframework.zip",
            checksum: "__CHECKSUM_CHOICELYREACTNATIVE__"
        )
    ]
)
