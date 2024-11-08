
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
        .package(url: "https://github.com/sportradar/mobile-us-widgets-shared", exact: "0.4.16"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.6.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.6.0"),
        .package(url: "https://github.com/amplitude/Amplitude-iOS", from: "8.10.0")
    ],
    targets: [
        .binaryTarget(
            name: "WidgetSDK",
            url: "https://artifacts.mdp.sportradar.com/apple/native-widgets-core/7d94675f/release/WidgetSDK-iOS-0.4.16.zip",
            checksum: "b7e44d5d39431d2c30ab96abbe4f84384025b3bb6ee61a5fdf7b732cfa141b65"
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


