// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIKitLibrary",
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
        .package(url: "https://github.com/ReactiveX/RxSwift", from: "6.6.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture", from: "4.0.4"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.6.0"),
        .package(url: "https://github.com/maxsokolov/TableKit", from: "2.11.0")
    ],
    targets: [
        .target(name: "UIKitLibrary",
                dependencies: [
                    .product(name: "SnapKit", package: "SnapKit")
                ]),
        .target(name: "RxCocoaLibrary",
                dependencies: [
                    .product(name: "RxCocoa", package: "RxSwift"),
                    .product(name: "RxGesture", package: "RxGesture")
                ]),
        .target(name: "TableKitLibrary",
                dependencies: [
                    .product(name: "SnapKit", package: "SnapKit"),
                    .product(name: "TableKit", package: "TableKit"),
                ])
    ]
)
