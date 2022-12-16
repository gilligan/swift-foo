// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "swift-foo",
    products: [
        .library(
            name: "swift-foo",
            targets: ["swift-foo"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", from: "5.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "10.0.0"),
    ],
    targets: [
        .target(
            name: "swift-foo",
            dependencies: []
        ),
        .testTarget(
            name: "QuickTests",
            dependencies: ["swift-foo", "Quick", "Nimble"]
        ),
    ]
)
