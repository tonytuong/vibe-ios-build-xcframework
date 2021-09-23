// swift-tools-version:5.3
import PackageDescription

let version = "1.0.0"

let package = Package(
    name: "VibeBuildXCFramework",
    products: [
        .library(
            name: "GoogleMapsBase",
            targets: [
                "GoogleMapsBase"
            ]
        ),
        .library(
            name: "GoogleMapsCore",
            targets: [
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMapsM4B",
            targets: [
                "GoogleMapsM4B"
            ]
        ),
        .library(
            name: "GooglePlaces",
            targets: [
                "GooglePlaces",
                "GoogleMapsBase"
            ]
        ),
        .library(
            name: "Smooch",
            targets: [
                "Smooch"
            ]
        ),
        .library(
            name: "AppAuth",
            targets: [
                "AppAuth"
            ]
        ),
        .library(
            name: "GoogleSignIn",
            targets: [
                "GoogleSignIn"
            ]
        ),
        .library(
            name: "GTMAppAuth",
            targets: [
                "GTMAppAuth"
            ]
        ),
        .library(
            name: "GTMSessionFetcher",
            targets: [
                "GTMSessionFetcher"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/GoogleMaps.xcframework.zip",
            checksum: "6b6b0add8da03d2b1b004a18affe96f6538dd2444ab379d0d623947aa9b872d5"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "80ed78c44ce128381e975e0bb7d6f3ced36e63059a557e72c81d6513cff65116"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "13ddd0bd4fbda7152b34f9c7236de70f2a85a518c41717b227de040c8ad31db8"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/GoogleMapsM4B.xcframework.zip",
            checksum: "c6b76521e6c7ad6ea4eaff980c501258e6001a40ea8d8ef1975cdc6ee0d8abc9"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/GooglePlaces.xcframework.zip",
            checksum: "37cd3b9f678e6c60ddb94c46eb1a32c0de8604cc228452599941707fffa84868"
        ),
        .binaryTarget(
            name: "Smooch",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/Smooch.xcframework.zip",
            checksum: "4471fda58a7bf598cfe679fca2c09fe9e849b0941c2be7438b7fef9870af7a1d"
        ),
        .binaryTarget(
            name: "AppAuth",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/AppAuth.xcframework.zip",
            checksum: "e231f176bebf7aedc9107c56858f7d51197ab561a2b9c8d0b8a1c652b1173e2c"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/GoogleSignIn.xcframework.zip",
            checksum: "e3cd7d581106fb79ba3a11890db3d7878decb8689a77ff682b0bc80a967a578b"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/GTMAppAuth.xcframework.zip",
            checksum: "6f2c97520b93cb59cfcd06da5d960192374dbb0a33820753c97164a5bfeb373b"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.0/GTMSessionFetcher.xcframework.zip",
            checksum: "53ba88cf81e2b9a41aafc9b3a93263d0d433752b71a15737ca3a5f90d6fc2129"
        )
    ]
)
