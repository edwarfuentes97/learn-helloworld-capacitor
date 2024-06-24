// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LearnHelloworldCapacitor",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "LearnHelloworldCapacitor",
            targets: ["LearnHelloworldCapacitorPluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "LearnHelloworldCapacitorPluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/LearnHelloworldCapacitorPluginPlugin"),
        .testTarget(
            name: "LearnHelloworldCapacitorPluginPluginTests",
            dependencies: ["LearnHelloworldCapacitorPluginPlugin"],
            path: "ios/Tests/LearnHelloworldCapacitorPluginPluginTests")
    ]
)