// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "SwiftWhen",
  products: [
    .library(
      name: "SwiftWhen",
      targets: ["SwiftWhen"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "SwiftWhen",
      dependencies: []
    ),
    .testTarget(
      name: "SwiftWhenTests",
      dependencies: ["SwiftWhen"]
    ),
  ]
)
