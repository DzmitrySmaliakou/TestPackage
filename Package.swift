// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DocReader",
    products: [
        .library(name: "Full", targets: ["FullTarget"]),
        .library(name: "Barcode", targets: ["BarcodeTarget"])
    ],
    dependencies: [
        .package(name: "FullCore",
                 url: "https://github.com/Darkzwer/FullCore",
                 branch: "main"),
        .package(name: "BarcodeCore",
                 url: "https://github.com/Darkzwer/BarcodeCore",
                 branch: "main")
    ],
    targets: [
        .target(
            name: "FullTarget",
            dependencies: [
                .byName(name: "FullCore")
            ]),
        .target(
            name: "BarcodeTarget",
            dependencies: [
                .byName(name: "BarcodeCore")
            ])
    ]
)
