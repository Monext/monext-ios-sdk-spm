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
            url: "https://github.com/Monext/monext-ios-sdk/releases/download/1.0.8/Monext-1.0.8.zip",
            checksum: "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
