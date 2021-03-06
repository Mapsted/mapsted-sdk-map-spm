// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "MapstedMap",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapstedMap",
            targets: ["MapstedMapWrapper"]
        )
    ],
    dependencies: [
            .package(
                name: "AWSiOSSDKV2",
                url: "https://github.com/aws-amplify/aws-sdk-ios-spm",
                .upToNextMajor(from: "2.0.0")
            ),
            
            .package(
                name: "MapstedCore",
                url: "https://github.com/Mapsted/mapsted-sdk-core-spm",
                .exact("4.6.2")
            ),
        
            .package(
                name: "MapSDK",
                url: "https://github.com/Mapsted/mapsted-sdk-core-map-spm",
                .exact("4.6.2")
            ),
            
            .package(
                name: "coremap",
                url: "https://github.com/Mapsted/mapsted-sdk-map-base",
                .exact("4.6.2")
            )
            
    ],
    targets: [
        .target(name: "MapstedMapWrapper",
                dependencies: [
                    .target(name: "MapstedMap"),
                    .product(name: "AWSS3", package: "AWSiOSSDKV2"),
                    .product(name: "MapstedCore", package: "MapstedCore"),
                    .product(name: "MapSDK", package: "MapSDK"),
                    .product(name: "coremap", package: "coremap")
                ]
        ),
        .binaryTarget(
            name: "MapstedMap",
            path: "MapstedMap.xcframework"
        ),
    ])

