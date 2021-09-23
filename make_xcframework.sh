#!/bin/bash

BUILD_DIRECTORY="build"
CARTHAGE_DIRECTORY="Carthage/Build"

function archive_project() {
  project_name=$1
  framework_name=$2

  # Archive iOS project.
  xcodebuild archive\
   -project "../$project_name.xcodeproj"\
   -scheme "$framework_name"\
   -configuration "Release"\
   -destination "generic/platform=iOS"\
   -archivePath "$framework_name.framework-iphoneos.xcarchive"\
   SKIP_INSTALL=NO\
   BUILD_LIBRARY_FOR_DISTRIBUTION=YES

  # Archive iOS Simulator project.
  xcodebuild archive\
     -project "../$project_name.xcodeproj"\
     -scheme "$framework_name"\
     -configuration "Simulator Release"\
     -destination "generic/platform=iOS Simulator"\
     -archivePath "$framework_name.framework-iphonesimulator.xcarchive"\
     SKIP_INSTALL=NO\
     BUILD_LIBRARY_FOR_DISTRIBUTION=YES
}

function create_xcframework() {
  project_name=$1
  framework_name=$2

  # Archive Xcode project.
  archive_project $project_name $framework_name

  # Create XCFramework from the archived project.
  xcodebuild -create-xcframework\
    -framework "$framework_name.framework-iphoneos.xcarchive/Products/Library/Frameworks/$framework_name.framework"\
    -framework "$framework_name.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/$framework_name.framework"\
    -output "$framework_name.xcframework"

    # Compress the XCFramework.
    zip -r -X "$framework_name.xcframework.zip" "$framework_name.xcframework/"

    # Save the SHA-256 checksum
    shasum -a 256 "$framework_name.xcframework.zip" >> checksum
}

function zip_move_googleSingin_xcframework() {
    framework_name=$1
    
    # Compress the XCFramework.
    zip -r "$framework_name.xcframework.zip" "$framework_name.xcframework/"
    mv "$framework_name.xcframework.zip" "../../build"
}

function checksum_googleSingin() {
    framework_name=$1
    # Save the SHA-256 checksum
    shasum -a 256 "$framework_name.xcframework.zip" >> checksum
}

function cleanup() {
  rm -r *.xcframework
  rm -r *.xcarchive
}

# Install Google Maps SDK for iOS.
#carthage update

# Create Build directory if not existing.
if [ ! -d "$BUILD_DIRECTORY" ]; then
  mkdir $BUILD_DIRECTORY
fi

# Go to folder carthage
cd $CARTHAGE_DIRECTORY

zip_move_googleSingin_xcframework "AppAuth"
zip_move_googleSingin_xcframework "GoogleSignIn"
zip_move_googleSingin_xcframework "GTMAppAuth"
zip_move_googleSingin_xcframework "GTMSessionFetcher"

# Back to folder Build xcframework
cd "../../build"

create_xcframework "VibeBuildXCFramework" "GoogleMaps"
create_xcframework "VibeBuildXCFramework" "GoogleMapsBase"
create_xcframework "VibeBuildXCFramework" "GoogleMapsCore"
create_xcframework "VibeBuildXCFramework" "GoogleMapsM4B"
create_xcframework "VibeBuildXCFramework" "GooglePlaces"
create_xcframework "VibeBuildXCFramework" "Smooch"

# Update file checksum
checksum_googleSingin "AppAuth"
checksum_googleSingin "GoogleSignIn"
checksum_googleSingin "GTMAppAuth"
checksum_googleSingin "GTMSessionFetcher"

cleanup

echo $'\n** XCFRAMEWORK CREATION FINISHED **\n'
