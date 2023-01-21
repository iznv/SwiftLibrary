// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLibrary",
    products: [
        .library(name: "SwiftLibrary",
                 targets: ["SwiftLibrary"]),
    ],
    targets: [
        .target(name: "SwiftLibrary",
                dependencies: [])
    ]
)
