// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Module",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Module",
            targets: ["Module"]
        ),
        .library(
            name: "ModuleInterface",
            targets: ["ModuleInterface"]
        ),
        .library(
            name: "ModuleMocks",
            targets: ["ModuleMocks"]
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Module",
            dependencies: [
                "ModuleInterface"
            ]
        ),
        .target(
            name: "ModuleInterface"
        ),
        .target(
            name: "ModuleMocks",
            dependencies: [
                "ModuleInterface"
            ]
        ),
        .testTarget(
            name: "ModuleTests",
            dependencies: [
                "Module",
                "ModuleInterface",
                "ModuleMocks"
            ]
        ),
    ]
)
