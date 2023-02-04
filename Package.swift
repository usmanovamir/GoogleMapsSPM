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
            ],
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("z"),
                .linkedFramework("CoreData"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit")
            ]
        ),
        .target(
            name: "GoogleMapsWrapper",
            dependencies: [
                .target(name: "GoogleMapsBaseWrapper"),
                .target(name: "GoogleMapsCore"),
                .target(name: "GoogleMaps")
            ],
            resources: [
                .copy("Resources/GoogleMaps.bundle")
            ],
            linkerSettings: [
              .linkedLibrary("c++"),
              .linkedLibrary("z"),
              .linkedFramework("Accelerate"),
              .linkedFramework("CoreTelephony"),
              .linkedFramework("CoreText"),
              .linkedFramework("GLKit"),
              .linkedFramework("ImageIO"),
              .linkedFramework("OpenGLES"),
              .linkedFramework("QuartzCore")
            ]
        ),
        .binaryTarget(name: "GoogleMapsBase", path: "Frameworks/GoogleMapsBase.xcframework"),
        .binaryTarget(name: "GoogleMapsCore", path: "Frameworks/GoogleMapsCore.xcframework"),
        .binaryTarget(name: "GoogleMaps", path: "Frameworks/GoogleMaps.xcframework")
    ]
)

/*
 "Accelerate",
        "CoreTelephony",
        "CoreText",
        "GLKit",
        "ImageIO",
        "OpenGLES",
        "QuartzCore"
 */
