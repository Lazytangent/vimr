// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "RxPack",
  platforms: [.macOS(.v10_13)],
  products: [
    .library(name: "RxPack", targets: ["RxPack"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMinor(from: "6.2.0")),
    .package(
      name: "MessagePack",
      url: "https://github.com/a2/MessagePack.swift",
      .upToNextMinor(from: "4.0.0")
    ),
    .package(
      name: "Socket",
      url: "https://github.com/IBM-Swift/BlueSocket",
      .upToNextMinor(from: "2.0.2")
    ),
    .package(url: "https://github.com/Quick/Nimble", .upToNextMinor(from: "9.2.1")),
  ],
  targets: [
    .target(
      name: "RxPack",
      dependencies: ["RxSwift", "MessagePack", "Socket"]
    ),
    .testTarget(
      name: "RxPackTests",
      dependencies: ["RxPack", "Nimble"]
    ),
  ]
)
