//
//  Project.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription

let name = "SplashFeature"

var project = Project(
    name: name,
    targets: [
        .target(
            name: name,
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.AnimalPicker.\(name)",
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
                .project(target: "Core", path: "../Core")
            ]
        ),
    ]
)
