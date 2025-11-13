// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "SwiftUIFlow",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v16),
        .watchOS(.v9),
        .visionOS(.v1)
    ],
    products: [
        .library(name: "SwiftUIFlow", targets: ["SwiftUIFlow"])
    ],
    targets: [
        .target(
            name: "SwiftUIFlow",
            exclude: ["Example"],
            swiftSettings: [
                .enableUpcomingFeature("ExistentialAny"),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "FlowTests",
            dependencies: ["SwiftUIFlow"],
            swiftSettings: [
                .enableUpcomingFeature("ExistentialAny"),
                .swiftLanguageMode(.v6)
            ]
        )
    ]
)
