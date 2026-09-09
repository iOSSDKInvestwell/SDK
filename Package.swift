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
            targets: ["MintFrameworks"]
        ),
        .library(
            name: "VoltFramework",
            targets: ["VoltFramework"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "MintFrameworks",
            url: "https://github.com/iOSSDKInvestwell/SDK/releases/download/1.0.0/MintFrameworks.xcframework.zip",
            checksum: "4df8c0deacb1d6ec4ecbdaabdd9061b1ee0093e980be7be9ffd179bb203b9644"
        ),
        .binaryTarget(
            name: "VoltFramework",
            url: "https://github.com/iOSSDKInvestwell/SDK/releases/download/1.0.0/VoltFramework.xcframework.zip",
            checksum: "c0d0dc04fd260812639fc2555fde70701f5982a776a7e9268f90a4dec8f70cee"
        )
    ]
)
