// swift-tools-version:6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "HeatherKit",
  platforms: [.iOS(.v26), .visionOS(.v1), .macOS(.v26)],
  products: [
    .library(
      name: "HeatherKit",
      type: .static,
      targets: ["HeatherKit"]),
  ],
  dependencies: [
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "HeatherKit",
      dependencies: []),
    .testTarget(
      name: "HeatherKitTests",
      dependencies: ["HeatherKit"]),
  ]
)
