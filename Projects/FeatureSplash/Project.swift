//
//  Project.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.featureSplash

var project = Project(
    name: module.name,
    targets: [
        feature(
            module: module,
            dependencies: [
                Module.core.project,
                Module.ui.project,
                Module.coordinator.project,
            ]
        )
    ]
)
