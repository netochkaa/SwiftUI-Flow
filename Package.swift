// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftUIFlow",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v16),
        .watchOS(.v9)
    ],
    products: [
        .library(name: "SwiftUIFlow", targets: ["SwiftUIFlow"])
    ],
    targets: [
        .target(
            name: "SwiftUIFlow",
            swiftSettings: [
                .enableUpcomingFeature("ExistentialAny"),
                .enableExperimentalFeature("StrictConcurrency")
            ]
        )
    ]
)
