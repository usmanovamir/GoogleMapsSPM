// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMapsPackage",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoogleMaps",
            targets: ["GoogleMapsCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
//        .target(
//            name: "Bundle",
//            resources: [
//                .copy("Resources/GoogleMaps.bundle")
//            ]
//
//        ),
//        .binaryTarget(name: "GoogleMaps", path: "Frameworks/GoogleMaps.xcframework"),
//        .binaryTarget(name: "GoogleMapsBase", path: "Frameworks/GoogleMapsBase.xcframework"),
        .binaryTarget(name: "GoogleMapsCore", path: "Frameworks/GoogleMapsCore.xcframework")
    ]
)
