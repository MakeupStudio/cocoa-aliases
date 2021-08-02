// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "cocoa-aliases",
  products: [
    .library(
      name: "CocoaAliases",
      targets: ["CocoaAliases"]
    ),
  ],
  targets: [
    .target(name: "CocoaAliases")
  ]
)
