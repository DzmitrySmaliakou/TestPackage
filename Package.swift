// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DocReader",
    products: [
        .library(name: "Full", targets: ["FullTarget"]),
        .library(name: "Barcode", targets: ["BarcodeTarget"])
    ],
    targets: [
        .target(
            name: "FullTarget",
            dependencies: [
                .package(url: "https://github.com/Darkzwer/FullCore", branch: "main")
            ]),
        .target(
            name: "BarcodeTarget",
            dependencies: [
                .package(url: "https://github.com/Darkzwer/BarcodeCore", branch: "main")
            ])
    ]
)
