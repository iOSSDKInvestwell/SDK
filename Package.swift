// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MintFrameworks",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MintFrameworks",
            targets: ["MintFrameworksWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/danielgindi/Charts.git", from: "5.1.0"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", from: "8.0.3"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.6.1"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.21.7"),
        .package(url: "https://github.com/jonkykong/SideMenu.git", from: "6.5.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.2"),
        .package(url: "https://github.com/TimOliver/TOCropViewController.git", from: "3.2.0"),
        .package(url: "https://github.com/Yummypets/YPImagePicker.git", from: "5.4.0"),
        .package(url: "https://github.com/ninjaprox/NVActivityIndicatorView.git", from: "5.2.1")
    ],
    targets: [
        .binaryTarget(
            name: "MintFrameworksBinary",
            url: "https://github.com/iOSSDKInvestwell/SDK/releases/download/1.0.0/MintFrameworks.xcframework.zip",
            checksum: "215cdea1fbe130555100d52133c23a3a09e9b7b9b728a626d0a51fc2b6614284"
        ),
        .binaryTarget(
            name: "VoltFrameworkBinary",
            url: "https://github.com/iOSSDKInvestwell/SDK/releases/download/1.0.0/VoltFramework.xcframework.zip",
            checksum: "b096ac75e08c6443a267f35351c35945efdb1d39543d9e461491a7a24be22ba5"
        ),
        .target(
            name: "MintFrameworksWrapper",
            dependencies: [
                .target(name: "MintFrameworksBinary"),
                .target(name: "VoltFrameworkBinary"),
                .product(name: "DGCharts", package: "Charts"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "SideMenu", package: "SideMenu"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "TOCropViewController", package: "TOCropViewController"),
                .product(name: "YPImagePicker", package: "YPImagePicker"),
                .product(name: "NVActivityIndicatorView", package: "NVActivityIndicatorView")
            ],
            path: "Sources/MintFrameworksWrapper"
        )
    ]
)
