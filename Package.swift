// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "Monext",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "Monext",
            targets: ["MonextWrapper"]
        )
    ],
    dependencies: [
            .package(url: "https://github.com/ios-3ds-sdk/SPM.git", exact: "2.6.00")
    ],
    targets: [
        .binaryTarget(
            name: "Monext",
            url: "https://github.com/Monext/monext-ios-sdk/releases/download/1.0.7/Monext-1.0.7.zip",
            checksum: "0cd6b752a338eabbacc895ca317fcfd025f1f77a693c6c3eb7ca0d0789368b43"
        ),
        .target(
            name: "MonextWrapper",
            dependencies: [
                "Monext",
                .product(name: "ThreeDS_SDK", package: "SPM")
            ]
        )
    ]
)
