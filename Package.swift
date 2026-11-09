// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Auth",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_Auth",
            targets: ["YF_Auth_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
            from: "1.7.8"
        )
    ],
    targets: [
        .target(
            name: "YF_Auth_Target",
            dependencies: [
                "YF_Auth_Binary"
                .product(name: "YF_Core", package: "YF_Core_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_Auth_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/auth/2.6.2/YFAuth.xcframework.zip",
            checksum: "dda2ca9070f3e8398a96ddb05b278388851e656fe2248bb3f3b28144da4601d3"
        )
    ]
)