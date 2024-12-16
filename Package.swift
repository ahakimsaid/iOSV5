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
            url: "https://gitlab.tagcommander.com/mobile/pod-miror/-/tree/5.4.70/TCCore/5/4/1/TCCore.zip",
            checksum: "60e8269d29e431abb3aa95dd9a2e95d1026a17cbc58acf3bab516a2bd3d1acc9"
        ),
        .binaryTarget(
            name: "TCConsent",
            url: "https://gitlab.tagcommander.com/mobile/pod-miror/-/tree/5.4.70/TCConsent/5/3/3/TCConsent.zip",
            checksum: "69ed87fab1ca530914a0f53a55f4123dcd12cf36de92f4bf2a2b2a816ae627c6"
        ),
        .binaryTarget(
            name: "TCPartners",
            url: "https://gitlab.tagcommander.com/mobile/pod-miror/-/tree/5.4.70/TCPartners/5/0/3/TCPartners.zip",
            checksum: "00c75296c5488e801c61fb7afa982ebfea1744e911d43d1a661c1e3531c63098"
        ),
        .binaryTarget(
            name: "TCServerSide_noIDFA",
            url: "https://gitlab.tagcommander.com/mobile/pod-miror/-/tree/5.4.70/TCServerSide/5/4/4/TCServerSide_noIDFA.zip",
            checksum: "c73ab8887559669a277294feb047ac5b218bdf116a3c2e01bea08f03e85dd472"
        ),
        .binaryTarget(
            name: "TCServerSide",
            url: "https://gitlab.tagcommander.com/mobile/pod-miror/-/tree/5.4.70/TCServerSide/5/4/4/TCServerSide.zip",
            checksum: "0da88c9512f4a8e693b49fe1e5ef88fe7fcda67f56b160cba15592e6c72c196e"
        ),
        .binaryTarget(
            name: "TCIAB",
            url: "https://gitlab.tagcommander.com/mobile/pod-miror/-/tree/5.4.70/TCIAB/5/1/1/TCIAB.zip",
            checksum: "1ac98f4cdbd0d112eb539e4b7e3e83f1d4e6fca5a412f51710f5381e39398073"
        ),  ]
)
