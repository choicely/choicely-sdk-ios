// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "Choicely",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "ChoicelyCore", targets: ["Choicely"]),
        .library(name: "ChoicelyMap", targets: ["ChoicelyMap"]),
        .library(name: "ChoicelyFirebase", targets: ["ChoicelyFirebase"]),
        .library(name: "ChoicelyShop", targets: ["ChoicelyShop"]),
        .library(name: "ChoicelyReactNative", targets: ["ChoicelyReactNative", "ChoicelyReactNativeEngine", "hermesvm", "rnllama"]),
    ],
    dependencies: [
        .package(url: "https://github.com/layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "https://github.com/Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: ["ChoicelyCore", "FlexLayout", "DTCoreText"]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.1/ChoicelyCore.xcframework.zip",
            checksum: "40bc69e57da327d03a4e1d1e9a2aad1f08ef09f3e35b1fa7a4a107fdb780bfb3"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.1/ChoicelyMap.xcframework.zip",
            checksum: "48caee2385e9959d9cbdbb4eb02cff29ea875bd7e41dc079d37d79bde169a333"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.1/ChoicelyFirebase.xcframework.zip",
            checksum: "f0454d69454ecd61d1a5373182dd5ea8788f7a4a1c3b249cfb2f937646fd1163"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.1/ChoicelyShop.xcframework.zip",
            checksum: "e07065f84a41e5bdee32ce459942082df5e62f20a463739fe69d75766f54bc8a"
        ),
        .binaryTarget(
            name: "ChoicelyReactNativeEngine",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.1/ChoicelyReactNativeEngine.xcframework.zip",
            checksum: "49409f3668edaf68c346c3c2c8df8783f623d90e504ac5de403920c10e2a905c"
        ),
        .binaryTarget(
            name: "hermesvm",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.1/hermesvm.xcframework.zip",
            checksum: "65249fc31b543c77b1323d14d96b571c86ba24f967e002910a1f49ba389a633e"
        ),
        .binaryTarget(
            name: "rnllama",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.1/rnllama.xcframework.zip",
            checksum: "f3e8ce8e09700ca4e5e6ba36f72f0d156311f869210c95cc15cface66cc0569d"
        ),
        .binaryTarget(
            name: "ChoicelyReactNative",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/1.3.1/ChoicelyReactNative.xcframework.zip",
            checksum: "9b91afa043a83633d054b43530e5080184f6df7571c01b54c2062d5f4a426387"
        )
    ]
)
