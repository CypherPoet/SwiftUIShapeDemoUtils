// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIShapeDemoUtils",
    platforms: [
        .iOS(SupportedPlatform.IOSVersion.v14),
        .macOS(SupportedPlatform.MacOSVersion.v11),
        .tvOS(SupportedPlatform.TVOSVersion.v14),
        .watchOS(SupportedPlatform.WatchOSVersion.v7),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftUIShapeDemoUtils",
            targets: ["SwiftUIShapeDemoUtils"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftUIShapeDemoUtils",
            dependencies: [
            ],
            path: "Sources/SwiftUIShapeDemoUtils/"
        ),
        .testTarget(
            name: "SwiftUIShapeDemoUtilsTests",
            dependencies: [
                "SwiftUIShapeDemoUtils",
            ],
            path: "Tests/SwiftUIShapeDemoUtils/"
        ),
    ]
)
