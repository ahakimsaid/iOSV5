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
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.80/TCCore/5/4/2/TCCore.zip",
            checksum: "76cc8f69db589d66ca031542a3c617017c7099d9eef46be8c72212dac8897fa0"
        ),
        .binaryTarget(
            name: "TCConsent",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.80/TCConsent/5/3/8/TCConsent.zip",
            checksum: "c2aaf49bb47e545a805eb0f2e6561d3682e4f4e16b663a2bb858d897c9a5f4f7"
        ),
        .binaryTarget(
            name: "TCPartners",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.80/TCPartners/5/0/3/TCPartners.zip",
            checksum: "8f93d104d73878138cbb44098cdfb99d92a37ccab51e969edf5b4c1733443033"
        ),
        .binaryTarget(
            name: "TCServerSide_noIDFA",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.80/TCServerSide/5/4/5/TCServerSide_noIDFA.zip",
            checksum: "0623e698f8780f07c4a734b9fa30e1c08eaa419ebca43992f4e71fc9ef0b6744"
        ),
        .binaryTarget(
            name: "TCServerSide",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.80/TCServerSide/5/4/5/TCServerSide.zip",
            checksum: "78c82c0312c214ef910cde0220be5a0f16d967b499b3ba8616100c608e6ce1b7"
        ),
        .binaryTarget(
            name: "TCIAB",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.80/TCIAB/5/1/3/TCIAB.zip",
            checksum: "d72faacb04dbffae687abe085267fe93999bb2b3aa87a05d3840d0a4e3ba43ea"
        ),  ]
)
