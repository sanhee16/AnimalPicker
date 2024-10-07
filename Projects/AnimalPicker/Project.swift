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
        app(
            module: module,
            dependencies: [
                Module.featureMain.project,
//                Module.featureSplash.project,
            ]
        )
    ]
)
