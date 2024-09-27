import ProjectDescription

let project = Project(
    name: "AnimalPicker",
    targets: [
        .target(
            name: "AnimalPicker",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.AnimalPicker",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["AnimalPicker/Sources/**"],
            resources: ["AnimalPicker/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "AnimalPickerTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AnimalPickerTests",
            infoPlist: .default,
            sources: ["AnimalPicker/Tests/**"],
            resources: [],
            dependencies: [.target(name: "AnimalPicker")]
        ),
    ]
)
