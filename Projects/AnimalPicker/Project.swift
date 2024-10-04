//
//  Project.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

var project = Project(
    name: "AnimalPicker",
    targets: [
        .target(
            name: "AnimalPicker",
            destinations: [.iPad, .iPhone],
            product: .app,
            bundleId: "com.sandy.AnimalPicker",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: Module.featureMain.name, path: Module.featureMain.path),
                .project(target: Module.featureSplash.name, path: Module.featureSplash.path),
            ]
        ),
//        .target(
//            name: "AnimalPickerTests",
//            destinations: .iOS,
//            product: .unitTests,
//            bundleId: "io.tuist.AnimalPickerTests",
//            infoPlist: .default,
//            sources: ["AnimalPicker/Tests/**"],
//            resources: [],
//            dependencies: [.target(name: "AnimalPicker")]
//        ),
    ]
)
