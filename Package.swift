
// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "WidgetSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "WidgetSDK",
            targets: ["WidgetSDKTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/sportradar/mobile-us-widgets-shared", exact: "0.4.13"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.6.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.6.0"),
        .package(url: "https://github.com/amplitude/Amplitude-iOS", from: "8.10.0")
    ],
    targets: [
        .binaryTarget(
            name: "WidgetSDK",
            url: "https://artifacts.mdp.sportradar.com/apple/native-widgets-core/acfd928e/release/WidgetSDK-iOS-0.4.13.zip",
            checksum: "49362fa76d18c5b95d3bbcbce752212af041bbfbe8758f0afd33914622e5361f"
        ),
        .target(
            name: "WidgetSDKTarget",
                dependencies: [
                    .target(name: "WidgetSDK"),
                    .product(name: "shared", package: "mobile-us-widgets-shared"),
                    .product(name: "Alamofire", package: "Alamofire"),
                    .product(name: "SnapKit", package: "SnapKit"),
                    .product(name: "Amplitude", package: "Amplitude-iOS")
                ],
            path: "WidgetSDKTarget")
    ]
)


