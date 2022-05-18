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
            targets: ["MapstedMap"]
        )
    ],
    dependencies: [
            // Here we define our package's external dependencies
            // and from where they can be fetched:
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
                url: "https://github.com/Mapsted/mapsted-sdk-map-core-spm",
                .exact("4.6.2")
            )
    ],
    targets: [
        .binaryTarget(
            name: "MapstedMap",
            path: "MapstedMap.xcframework"
        )
    ])

