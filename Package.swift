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
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/GoogleMaps.xcframework.zip",
            checksum: "aa25bcda03e21ea08aa8ca208109f2916b6f1ff12611da8d0639312306cfeb82"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/GoogleMapsBase.xcframework.zip",
            checksum: "be6130cebcfd75cf4ac55e915a32dfde23180e792533486e30acb6c1897b3c45"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/GoogleMapsCore.xcframework.zip",
            checksum: "0ad98ae1f38ea181926fb4ee60a43ae3c2a089208fd1ceef317526f0e1c79832"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/GoogleMapsM4B.xcframework.zip",
            checksum: "ffe79c0f79d6366796ae30c954ed384bb59f4997adb286d33c9fbfbce0bc3f9c"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/GooglePlaces.xcframework.zip",
            checksum: "e1c3d98e3b1c00587642ccccaced5eef0e9c96a42c367f52281dd7513d263981"
        ),
        .binaryTarget(
            name: "Smooch",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/Smooch.xcframework.zip",
            checksum: "0682b6856bfa997e19e475ea44d9f8d6ed2d06e79bde93ba138103a5a02fc0fe"
        ),
        .binaryTarget(
            name: "AppAuth",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/AppAuth.xcframework.zip",
            checksum: "cefe4d2c1b832b965c4e8a300cf2eff82510e01466044d0afe76f990eb6d139e"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/GoogleSignIn.xcframework.zip",
            checksum: "af3d09e6ff241e1bccd3c6ff5f97f3bfef5c7048082d57d76d888d56a2b3c8d4"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/GTMAppAuth.xcframework.zip",
            checksum: "fd50a323dbedb9decbc2d1c5aa5446339e01eda8b1030f634080f269d8cef978"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://github.com/tonytuong/vibe-ios-build-xcframework/releases/download/v1.0.1/GTMSessionFetcher.xcframework.zip",
            checksum: "c457013b31796b18962a16e75b4cce0fa04f760547d83421d2df7c121d2a12e4"
        )
    ]
)
