// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "Choicely",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "ChoicelyCore",
            targets: ["Choicely"]
        ),
        .library(
            name: "ChoicelyMap",
            targets: ["ChoicelyMap"]
        ),
        .library(
            name: "ChoicelyFirebase",
            targets: ["ChoicelyFirebase"]
        ),
        .library(
            name: "ChoicelyShop",
            targets: ["ChoicelyShop"]
        )
    ],
    dependencies: [
        .package(url: "git@github.com:layoutBox/FlexLayout.git", .upToNextMajor(from: "2.0.10")),
        .package(url: "git@github.com:Cocoanetics/DTCoreText.git", .upToNextMajor(from: "1.6.28"))
    ],
    targets: [
        .target(
            name: "Choicely",
            dependencies: [
                "FlexLayout",
                "DTCoreText",
                .target(name: "ChoicelyCore")
            ]
        ),
        .binaryTarget(
            name: "ChoicelyCore",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.72/ChoicelyCore.xcframework.zip",
            checksum: "93de5e11b3078e8671f85ee69a942d1077f7bda75f77f774db1b7e7b6f2f525c"
        ),
        .binaryTarget(
            name: "ChoicelyMap",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.72/ChoicelyMap.xcframework.zip",
            checksum: "9a3badd7584274a64c5e9c00118cc8710fd9f070323346512f2fa715726e3b8c"
        ),
        .binaryTarget(
            name: "ChoicelyFirebase",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.72/ChoicelyFirebase.xcframework.zip",
            checksum: "04c2b4c52874db9287298a5087d8cf2b27920afea0bf2b4511dcf23853046c61"
        ),
        .binaryTarget(
            name: "ChoicelyShop",
            url: "https://github.com/choicely/choicely-sdk-ios/releases/download/0.0.72/ChoicelyShop.xcframework.zip",
            checksum: "ee506f604254b24b9a0af9aaadfbe61c8bdfa6aa52e56b77c14f46bb9647ac75"
        )
    ]
)
