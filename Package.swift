// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
  name: "TagCommander SDK V5",
  platforms: [ .iOS(.v12), .tvOS(.v12)],
  products: [
      // Products define the executables and libraries a package produces, and make them visible to other packages.

        .library(
            name: "TCCore",
            targets: ["TCCore"]),
        .library(
            name: "TCConsent",
            targets: ["TCConsent"]),
        .library(
            name: "TCPartners",
            targets: ["TCPartners"]),
        .library(
            name: "TCServerSide_noIDFA",
            targets: ["TCServerSide_noIDFA"]),
        .library(
            name: "TCServerSide",
            targets: ["TCServerSide"]),
        .library(
            name: "TCIAB",
            targets: ["TCIAB"]),  ],
  dependencies: [
  ],
  targets: [

        .binaryTarget(
            name: "TCCore",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.73/TCCore/5/4/1/TCCore.zip",
            checksum: "c00d610c688b1e868944bf922a0a63cc0208f295be1d65ebaba2c42cbd9e6ffe"
        ),
        .binaryTarget(
            name: "TCConsent",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.73/TCConsent/5/3/3/TCConsent.zip",
            checksum: "d119209531e38567b3b5f7620670930a1dd63027db010d58c94cb0bb52799c64"
        ),
        .binaryTarget(
            name: "TCPartners",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.73/TCPartners/5/0/3/TCPartners.zip",
            checksum: "56965defe5e367366321e4bba5fef3e38dcee185d8fac2cf8eeacb9f82b15904"
        ),
        .binaryTarget(
            name: "TCServerSide_noIDFA",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.73/TCServerSide/5/4/4/TCServerSide_noIDFA.zip",
            checksum: "3f8a61e7c67e5db82ffe0146e95edde07d4baebbe6033a2e1a58ea96f9082c98"
        ),
        .binaryTarget(
            name: "TCServerSide",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.73/TCServerSide/5/4/4/TCServerSide.zip",
            checksum: "ce207b55abc960fb0dad5d7b061de6279762636fdd4ed61cabac34b390ac795b"
        ),
        .binaryTarget(
            name: "TCIAB",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.73/TCIAB/5/1/1/TCIAB.zip",
            checksum: "804ea62b09f6664d158ea42bce107ae0cdc4e6d6dda745fcc02062548488a715"
        ),  ]
)
