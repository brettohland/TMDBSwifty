// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TMDB",
    platforms: [.iOS(.v16), .macOS(.v13), .macCatalyst(.v15), .tvOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TMDB",
            targets: ["TMDB"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TMDB",
            dependencies: []
        ),
        .testTarget(
            name: "TMDBTests",
            dependencies: ["TMDB"],
            resources: [
                .process("JSON")
            ]
        ),
    ]
)
