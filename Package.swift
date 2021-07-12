// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RRColorKit",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        .library(
            name: "RRColorKit",
            type: .dynamic,
            targets: ["RRColorKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rudrankriyam/RRComponentsKit.git", from: "0.2.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RRColorKit",
            dependencies: ["RRComponentsKit"]),
        .testTarget(
            name: "RRColorKitTests",
            dependencies: ["RRColorKit"]),
    ]
)
