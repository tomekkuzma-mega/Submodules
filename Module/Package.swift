// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Module",
    platforms: [
        .macOS(.v10_15), .iOS(.v15)
    ],
    products: [
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
