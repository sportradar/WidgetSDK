
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
        .package(url: "https://github.com/sportradar/mobile-us-widgets-shared", exact: "0.4.10"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.6.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.6.0"),
        .package(url: "https://github.com/amplitude/Amplitude-iOS", from: "8.10.0")
    ],
    targets: [
        .binaryTarget(
            name: "WidgetSDK",
            url: "https://artifacts.mdp.sportradar.com/apple/native-widgets-core/6050f7fa/release/WidgetSDK-iOS-0.4.10.zip",
            checksum: "886c35fcb125b3b2536be6c7d67c697b9e51de2950c2edeae31231f796de4512"
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


