# Google Maps Swift Package

## Requirements
* [iOS 10.0](https://wikipedia.org/wiki/IOS_10) or later.
* [Xcode 12.0](https://developer.apple.com/xcode) or later.

## Installation
- Add the following dependency to your project's `Package.swift`.

```swift
dependencies: [
    .package(url: "https://gitlab.com/tuongdang/vibe-ios-build-xcframework.git", .upToNextMinor(from: "1.0.0"))
]
```

### Known Issues
- If you use a Google Maps Swift package in an app with extensions, the build system incorrectly embeds the binary dependencies alongside the extension in the PlugIns directory, causing validation of the archived app to fail. (69834549) (FB8761306)

    **Workaround:** Add a scheme post-build action which removes the embedded binaries from the PlugIns directory after the build, e.g. `rm -rf "${TARGET_BUILD_DIR}/${TARGET_NAME}.app"/PlugIns/*.framework`.

# vibe-ios-build-xcframework
