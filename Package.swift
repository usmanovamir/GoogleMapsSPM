// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMaps",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "GoogleMapsUtils",
            targets: ["GoogleMapsUtils"]
        ),
        .library(
            name: "GoogleMaps",
            targets: ["GoogleMaps", "GoogleMapsBase"]
        )
    ],
    targets: [
        .binaryTarget(name: "GoogleMapsBase", path: "Frameworks/GoogleMapsBase.xcframework"),
        .binaryTarget(name: "GoogleMaps", path: "Frameworks/GoogleMaps.xcframework"),
        .binaryTarget(name: "GoogleMapsUtils", path: "Frameworks/GoogleMapsUtils.xcframework")
    ]
)
