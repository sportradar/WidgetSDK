
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
        .package(url: "https://github.com/sportradar/mobile-us-widgets-shared", exact: "0.4.11"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.6.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.6.0"),
        .package(url: "https://github.com/amplitude/Amplitude-iOS", from: "8.10.0")
    ],
    targets: [
        .binaryTarget(
            name: "WidgetSDK",
            url: "https://artifacts.mdp.sportradar.com/apple/native-widgets-core/336e31a6/release/WidgetSDK-iOS-0.4.11.zip",
            checksum: "ed2927a7624b892ab096e11878a9dea04dd65719a3f694f639a3c566d89f7a9f"
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


