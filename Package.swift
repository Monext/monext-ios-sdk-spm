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
            url: "https://github.com/Monext/monext-ios-sdk/releases/download/1.0.9/Monext-1.0.9.zip",
            checksum: "f44b08db48d3ecf117884f01d95ee961a31d06b9794af828e29e21873c825b36"
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
