// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "PractRand",
    products: [
        .library(
            name: "PractRand",
            targets: ["PractRand"]
        ),
    ],
    targets: [
        .target(
            name: "PractRand",
            path: ".",
            sources: ["src"],
            publicHeadersPath: "include",
            cSettings: nil,
            cxxSettings: [
                .unsafeFlags([
//                    "-Wno-shorten-64-to-32",
//                    "-Wno-constant-logical-operand",
                ])
            ],
            linkerSettings: nil
        ),

        .target(
            name: "siphash"
        ),

        .executableTarget(
            name: "RNG_test",
            dependencies: [
                .target(name: "PractRand"),
                .target(name: "siphash"),
            ],
            path: ".",
            sources: ["tools/RNG_test.cpp"],
            publicHeadersPath: "include",
            cxxSettings: nil,
            linkerSettings: nil
        )
    ]
)
