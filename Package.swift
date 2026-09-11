// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MintFrameworks",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "MintFrameworks", targets: ["MintFrameworks"])
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
            checksum: "c382de55f6b7a2b309751103a2bc0069aa6d09b06b9cda021c12cbcb9a479f8a"
        ),
        .binaryTarget(
            name: "VoltFrameworkBinary",
            url: "https://github.com/iOSSDKInvestwell/SDK/releases/download/1.0.0/VoltFramework.xcframework.zip",
            checksum: "999dcaff0fb2a91e9272ecaecf5a4a523f91ff3d931813f313c6a8b7ff62b799"
        ),
        .target(
            name: "VoltFramework",
            dependencies: [.target(name: "VoltFrameworkBinary")]
        ),
        .target(
            name: "MintFrameworks",
            dependencies: [
                .target(name: "MintFrameworksBinary"),
                .target(name: "VoltFramework"),
                .product(name: "DGCharts", package: "Charts"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "SideMenu", package: "SideMenu"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "TOCropViewController", package: "TOCropViewController"),
                .product(name: "YPImagePicker", package: "YPImagePicker"),
                .product(name: "NVActivityIndicatorView", package: "NVActivityIndicatorView")
            ]
        )
    ]
)
