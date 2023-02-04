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
            name: "GoogleMaps",
            targets: ["GoogleMapsWrapper"]
        )
    ],
    targets: [
        .target(
            name: "GoogleMapsBaseWrapper",
            dependencies: [
                .target(name: "GoogleMapsBase")
            ]
        ),
        .target(
            name: "GoogleMapsWrapper",
            resources: [
                .copy("Resources/GoogleMaps.bundle")
            ],
            dependencies: [
                .target(name: "GoogleMapsBaseWrapper"),
                .target(name: "GoogleMapsCore"),
                .target(name: "GoogleMaps")
            ],
        ),
        .binaryTarget(name: "GoogleMapsBase", path: "Frameworks/GoogleMapsBase.xcframework"),
        .binaryTarget(name: "GoogleMapsCore", path: "Frameworks/GoogleMapsCore.xcframework"),
        .binaryTarget(name: "GoogleMaps", path: "Frameworks/GoogleMaps.xcframework")
    ]
)
