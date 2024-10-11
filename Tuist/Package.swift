// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        // default is .staticFramework
        productTypes: [
            "Alamofire": .framework, // .framework ==  .dynamicFramework
            "Factory": .framework,
        ]
    )
#endif

let package = Package(
    name: "AnimalPicker",
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.9.1"),
        .package(url: "https://github.com/hmlongco/Factory", from: "2.3.2"),
    ]
)
