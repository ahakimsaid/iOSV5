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
            name: "",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.10/TCCore/5/4/1/TCCore.zip",
            checksum: "573caa5b4cb360d1c385f95164f5598c7c7be5b7ac5b6683cb90e6a03d362976"
        ),
        .binaryTarget(
            name: "",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.10/TCConsent/5/3/3/TCConsent.zip",
            checksum: "2f7ae55ab32e64799974bf7b32c1aff98f6206e75a8a33576d1ca44a8e7383dc"
        ),
        .binaryTarget(
            name: "",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.10/TCPartners/5/0/3/TCPartners.zip",
            checksum: "7b052d4ddd8d7827c64ce27691e04c6b29c5d0a7dd8cd6d851c91f5080e6cd23"
        ),
        .binaryTarget(
            name: "_noIDFA",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.10/TCServerSideTCServerSide/5/4/4/TCServerSide_noIDFA.zip",
            checksum: "398f490dc48868ac8aa5d741bb845c824be44e3595c1e049898d0ee1718552cd"
        ),
        .binaryTarget(
            name: "",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.10/TCServerSide/5/4/4/TCServerSide.zip",
            checksum: "035e38469a8d44f9f47b7fac5b2fe4a973be415dbce2104aadaf4cc46068a285"
        ),
        .binaryTarget(
            name: "",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.10/TCIAB/5/1/1/TCIAB.zip",
            checksum: "edf6843bb57b755bda494d477e777d46d01a4a62ea6722a6273eb7837281b0dd"
        ),  ]
)
