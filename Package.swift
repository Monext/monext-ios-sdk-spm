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
            checksum: "0528c6841b20948834406940941cb28212eb850035b13c927b9d29afa459aed0"
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
