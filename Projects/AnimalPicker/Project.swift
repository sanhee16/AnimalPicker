//
//  Project.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription

var project = Project(
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
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "MainFeature", path: "../MainFeature"),
                .project(target: "SplashFeature", path: "../SplashFeature"),
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
