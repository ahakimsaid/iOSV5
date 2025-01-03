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
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.75/TCCore/5/4/2/TCCore.zip",
            checksum: "b056ac1ef263980fe348663ffebcb2eb9f78c2281c4faeda2ee6dbab95affac0"
        ),
        .binaryTarget(
            name: "TCConsent",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.75/TCConsent/5/3/4/TCConsent.zip",
            checksum: "26e180e080e6fc8b0260ac80ee4f8cd41d5d47f7b3bf81a842f9e594f9149c91"
        ),
        .binaryTarget(
            name: "TCPartners",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.75/TCPartners/5/0/5/TCPartners.zip",
            checksum: "c93759e337df1ceab2bdf61ad9d65d051f6a28788fd21093ef8e5f1878c6d364"
        ),
        .binaryTarget(
            name: "TCServerSide_noIDFA",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.75/TCServerSide/5/4/5/TCServerSide_noIDFA.zip",
            checksum: "22e52249466f774df3ef2446a6a75996e8a1c9ac81f57fa6d641a99b43a057a6"
        ),
        .binaryTarget(
            name: "TCServerSide",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.75/TCServerSide/5/4/5/TCServerSide.zip",
            checksum: "28616b4519c99f61b78550fa5e11ce53b20693811a64c2004bfa738b7677c88e"
        ),
        .binaryTarget(
            name: "TCIAB",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.75/TCIAB/5/1/2/TCIAB.zip",
            checksum: "cffde397d6227fba17cec9af07e78f3a12777dfde0aaee1de98fe3280a878695"
        ),  ]
)
