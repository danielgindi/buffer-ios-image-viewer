// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "BFRImageViewer",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "BFRImageViewer",
            targets: ["BFRImageViewer"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/pinterest/PINRemoteImage.git", from: "3.0.0")
    ],
    targets: [
        .target(
            name: "BFRImageViewer",
            dependencies: [
                "PINRemoteImage"
            ],
            path: "BFRImageViewController",
            exclude: ["Resources/lowResImage.png"],
            resources: [
                .process("Resources/BFRImageViewerLocalizations.bundle")
            ],
            publicHeadersPath: ""
        )
    ]
)
