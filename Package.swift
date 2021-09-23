// swift-tools-version:5.3
import PackageDescription

let version = "1.0.1"

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
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/GoogleMaps.xcframework.zip",
            checksum: "742010ab01c5225eb30e0c3009c921c7c9dde68649f0925053d12f597d4f76c7"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/GoogleMapsBase.xcframework.zip",
            checksum: "52bc34a9f2d837c76d0464460c265f8230fb4457c1a97c1413cb8a233bc879a1"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/GoogleMapsCore.xcframework.zip",
            checksum: "d6b7647750c646f25eb2d66bdccdbd3490e2d81cfa059510f103c2e8d9cd0d66"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/GoogleMapsM4B.xcframework.zip",
            checksum: "21eeb5cef14b82a63d7f42f7bbfd6d5fde71b19c5a64f6359bef066310d44ccb"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/GooglePlaces.xcframework.zip",
            checksum: "00e8a87ffa529dc9657c254064b3b42de06645556a0d60e892980822e159ffd1"
        ),
        .binaryTarget(
            name: "Smooch",
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/Smooch.xcframework.zip",
            checksum: "96246fbae1cd61173872c00e3ff14270fb04adee539c96027357d372c45adedf"
        ),
        .binaryTarget(
            name: "AppAuth",
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/AppAuth.xcframework.zip",
            checksum: "f9ca252870987ac27c2cf060d7fb5922fefd00ceee5853bbc90b8976b0662195"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/GoogleSignIn.xcframework.zip",
            checksum: "22d48388b89a0feecf8d59bb1a34bb20023ef062b2562378f5c0a867d8f67334"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/GTMAppAuth.xcframework.zip",
            checksum: "62772bf11058502ac1e9dad17744cecf86e907deb7111aa814a09b16ec42ece0"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework/-/tree/master/releases/download/\(version)/GTMSessionFetcher.xcframework.zip",
            checksum: "99234f5ff2cc719e4dec2b2ea7807f32cdf52a1d9e83b459a73b548dcca8a97f"
        )
    ]
)
