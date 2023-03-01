// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIKitLibrary",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "UIKitLibrary",
                 targets: ["UIKitLibrary"]),
        .library(name: "RxCocoaLibrary",
                 targets: ["RxCocoaLibrary"]),
        .library(name: "TableKitLibrary",
                 targets: ["TableKitLibrary"])
    ],
    dependencies: [
        .package(url: "https://github.com/iznv/RxSwiftBinaries", from: "6.5.0"),
        .package(url: "https://github.com/iznv/SnapKitBinaries", from: "5.6.0"),
        .package(url: "https://github.com/iznv/TableKitBinaries", from: "2.11.0")
    ],
    targets: [
        .target(name: "UIKitLibrary",
                dependencies: [
                    .product(name: "SnapKit", package: "SnapKitBinaries")
                ]),
        .target(name: "RxCocoaLibrary",
                dependencies: [
                    .product(name: "RxCocoa", package: "RxSwiftBinaries")
                ]),
        .target(name: "TableKitLibrary",
                dependencies: [
                    .product(name: "SnapKit", package: "SnapKitBinaries"),
                    .product(name: "TableKit", package: "TableKitBinaries"),
                ])
    ]
)
