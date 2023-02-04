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
            name: "GoogleMapsBase",
            targets: ["GoogleMapsBase"]
        ),
        .library(
            name: "GoogleMaps",
            targets: ["GoogleMapsCoreWrapper"]
        ),
    ],
    targets: [
        .target(
            name: "GoogleMapsCoreWrapper",
            dependencies: [
                .target(name: "GoogleMapsBase")
                .target(name: "GoogleMapsCore")
            ]
        ),
        .binaryTarget(name: "GoogleMapsBase", path: "Frameworks/GoogleMapsBase.xcframework"),
        .binaryTarget(name: "GoogleMapsCore", path: "Frameworks/GoogleMapsCore.xcframework"),
    ]
)
