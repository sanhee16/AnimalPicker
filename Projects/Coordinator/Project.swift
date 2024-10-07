//
//  Project.swift
//  Manifests
//
//  Created by sandy on 10/7/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.coordinator

var project = Project(
    name: module.name,
    targets: [
        kit(
            module: module,
            dependencies: [
                
            ]
        )
    ]
)
