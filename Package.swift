// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "SwiftFoo",
    products: [
        .library(
            name: "SwiftFoo",
            targets: ["SwiftFoo"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", from: "5.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "10.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftFoo",
            dependencies: []
        ),
        .testTarget(
            name: "QuickTests",
            dependencies: ["SwiftFoo", "Quick", "Nimble"]
        ),
    ]
)
