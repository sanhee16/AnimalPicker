//
//  Project.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.app

var project = Project(
    name: module.name,
    targets: [
        .target(
            name: module.name,
            destinations: [.iPad, .iPhone],
            product: .app,
            bundleId: "com.sandy.AnimalPicker",
            deploymentTargets: .iOS("16.0"),
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
                Module.featureMain.project,
            ]
        )
    ]
)
