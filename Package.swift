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
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.16/TCCore/5/4/2/TCCore.zip",
            checksum: "95fabe8ac12c532e88b5aee0e0a504c83406f84ec3dfa824bec62fd9c8461948"
        ),
        .binaryTarget(
            name: "TCConsent",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.16/TCConsent/5/3/4/TCConsent.zip",
            checksum: "fd7d81ea91c076f5f4476d4af756fde1557236922ca619011fc230d7801ec62c"
        ),
        .binaryTarget(
            name: "TCPartners",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.16/TCPartners/5/0/5/TCPartners.zip",
            checksum: "a6373de60ec521bf878028afd6059cdb1e28958c2bd65cb8f8ba8d27bafc68fa"
        ),
        .binaryTarget(
            name: "TCServerSide_noIDFA",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.16/TCServerSide/5/4/5/TCServerSide_noIDFA.zip",
            checksum: "bdc2c2f3dc40a2da3adf3821dfd63bf42fa1f820200e777c76187de188ecc7d4"
        ),
        .binaryTarget(
            name: "TCServerSide",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.16/TCServerSide/5/4/5/TCServerSide.zip",
            checksum: "a02a6bf92734c3f5638b1d8e8d061c54f07b6806fc27d7870f1622a1d1ebb649"
        ),
        .binaryTarget(
            name: "TCIAB",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.16/TCIAB/5/1/2/TCIAB.zip",
            checksum: "7a633c6fd8f2b3eaf13c4a20d8080904d9ca0a457035b342135ec6286cf02089"
        ),  ]
)
