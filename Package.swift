// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLibrary",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "SwiftLibraryCore",
                 targets: ["SwiftLibraryCore"]),
        .library(name: "SwiftLibraryRxCocoa",
                 targets: ["SwiftLibraryRxCocoa"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.5.0")
    ],
    targets: [
        .target(name: "SwiftLibraryCore",
                dependencies: []),
        .target(name: "SwiftLibraryRxCocoa",
                dependencies: [
                    .product(name: "RxCocoa", package: "RxSwift")
                ])
    ]
)
