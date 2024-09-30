//
//  Project.swift
//  Manifests
//
//  Created by sandy on 9/30/24.
//

import ProjectDescription

let name = "Core"

var project = Project(
    name: name,
    targets: [
        .target(
            name: name,
            destinations: [.iPad, .iPhone],
            product: .framework,
            bundleId: "io.tuist.AnimalPicker.\(name)",
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
            resources: [],
            dependencies: [
            ]
        ),
    ]
)
