// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "IHBackend",
    products: [
        .library(name: "IHBackend", targets: ["App"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.3.1"),
        .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0"),
		.package(url: "https://github.com/pumperknickle/IHDataSchema", from: "0.0.4"),
	],
    targets: [
        .target(name: "App", dependencies: ["FluentPostgreSQL", "Vapor", "IHDataSchema"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

