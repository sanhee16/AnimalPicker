//
//  Project.swift
//  Manifests
//
//  Created by sandy on 9/30/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.core

var project = Project(
    name: module.name,
    targets: [
        kit(
            module: module,
            dependencies: [
                Module.networkKit.project
            ]
        )
    ]
)
