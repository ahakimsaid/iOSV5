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
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.15/TCCore/5/4/1/TCCore.zip",
            checksum: "6f6289711c13dd1c992c1585fe20729d1fcfbf1bcbdb491364a191e35cf67504"
        ),
        .binaryTarget(
            name: "TCConsent",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.15/TCConsent/5/3/3/TCConsent.zip",
            checksum: "4a772c4226ccc2ced492365ee7a117b2383b1c1bdac5c47a7a5c8fcdbe335d85"
        ),
        .binaryTarget(
            name: "TCPartners",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.15/TCPartners/5/0/3/TCPartners.zip",
            checksum: "31c0c44e859c15c5551dd0d47dec6aad4e2e24d3fc7004c4e679ad17047fb2f3"
        ),
        .binaryTarget(
            name: "TCServerSide_noIDFA",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.15/TCServerSide/5/4/4/TCServerSide_noIDFA.zip",
            checksum: "aa888e0d5219c58925bbbcd9be392d5468ee381d5d26048c7b36d766a2473b00"
        ),
        .binaryTarget(
            name: "TCServerSide",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.15/TCServerSide/5/4/4/TCServerSide.zip",
            checksum: "50525db55653db631ac0a36a7770fe7bb2ba242e81136705d7cbefaa6d6c1296"
        ),
        .binaryTarget(
            name: "TCIAB",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.15/TCIAB/5/1/1/TCIAB.zip",
            checksum: "d6c3d3a6a65da775f855dfa85378b6422fac7b7f673c650021052bed776c9d69"
        ),  ]
)
