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
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.77/TCCore/5/4/2/TCCore.zip",
            checksum: "f915d3f54c9ff090acaf8cbcbbd3d4857723133850c5774f984d9864e854e356"
        ),
        .binaryTarget(
            name: "TCConsent",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.77/TCConsent/5/3/4/TCConsent.zip",
            checksum: "804ca3424333ef7b637074c98984fc61799366e1613d632ce7d3af933f60f080"
        ),
        .binaryTarget(
            name: "TCPartners",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.77/TCPartners/5/0/5/TCPartners.zip",
            checksum: "be071975c2ef91a70ee8eb5313124e54ec4bfab75e9ace8bb4c8144bf061415c"
        ),
        .binaryTarget(
            name: "TCServerSide_noIDFA",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.77/TCServerSide/5/4/5/TCServerSide_noIDFA.zip",
            checksum: "40ead50e38fbc37b6589bc827544212a22d0f9ae9de0014bae331e3a227c086d"
        ),
        .binaryTarget(
            name: "TCServerSide",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.77/TCServerSide/5/4/5/TCServerSide.zip",
            checksum: "d087091aea6290cc64d9ddc15e98f4222d5955c78ceaf404a5beb34e4b9f3363"
        ),
        .binaryTarget(
            name: "TCIAB",
            url: "https://github.com/ahakimsaid/iOSV5/raw/5.4.77/TCIAB/5/1/2/TCIAB.zip",
            checksum: "b3b811ef7d3f71c8a4c1ff116ab09ce87dae0dfcdd6de280d683df670f270163"
        ),  ]
)
