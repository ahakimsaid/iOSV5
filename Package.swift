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
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.74/TCCore/5/4/1/TCCore.zip",
            checksum: "69f48271f271dc6acc9a96c30159ff6ac25e988cb186e705b63562cc1bbbf0d2"
        ),
        .binaryTarget(
            name: "TCConsent",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.74/TCConsent/5/3/3/TCConsent.zip",
            checksum: "772d3877069ecd90101dd7ad321cb900b7b25948100966d7252142a9b26a4d7e"
        ),
        .binaryTarget(
            name: "TCPartners",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.74/TCPartners/5/0/3/TCPartners.zip",
            checksum: "86ae1807e6d08f3f19dd59a5546fa3a7634eab94fedc55dc2a332a4ec4070480"
        ),
        .binaryTarget(
            name: "TCServerSide_noIDFA",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.74/TCServerSide/5/4/4/TCServerSide_noIDFA.zip",
            checksum: "d4fb75ff9b40e52371facdb3a338f75191c4ed85e70516ae6a990c1cb9856852"
        ),
        .binaryTarget(
            name: "TCServerSide",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.74/TCServerSide/5/4/4/TCServerSide.zip",
            checksum: "7f1ce84d25385022d76b1763bb5f5fbf13ac33c59775d9662ed86e44057d7d2e"
        ),
        .binaryTarget(
            name: "TCIAB",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.74/TCIAB/5/1/1/TCIAB.zip",
            checksum: "eed131c5d71ad8e75f22dd4c774a4e3dd866558edb0215887c3c01dd739153f2"
        ),  ]
)
