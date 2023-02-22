// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLibrary",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "SwiftLibraryCore",
                 targets: ["SwiftLibraryCore"]),
        .library(name: "SwiftLibraryUIKit",
                 targets: ["SwiftLibraryUIKit"]),
        .library(name: "SwiftLibraryRxCocoa",
                 targets: ["SwiftLibraryRxCocoa"]),
        .library(name: "SwiftLibraryTableKit",
                 targets: ["SwiftLibraryTableKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/iznv/RxSwiftBinaries", from: "6.5.0"),
        .package(url: "https://github.com/iznv/SnapKitBinaries", from: "5.6.0"),
        .package(url: "https://github.com/iznv/TableKitBinaries", from: "2.11.0")
    ],
    targets: [
        .target(name: "SwiftLibraryCore"),
        .target(name: "SwiftLibraryUIKit",
                dependencies: [
                    .product(name: "SnapKit", package: "SnapKitBinaries")
                ]),
        .target(name: "SwiftLibraryRxCocoa",
                dependencies: [
                    .product(name: "RxCocoa", package: "RxSwiftBinaries")
                ]),
        .target(name: "SwiftLibraryTableKit",
                dependencies: [
                    "SwiftLibraryCore",
                    .product(name: "SnapKit", package: "SnapKitBinaries"),
                    .product(name: "TableKit", package: "TableKitBinaries"),
                ])
    ]
)
