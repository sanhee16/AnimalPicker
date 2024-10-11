//
//  Project.swift
//  Manifests
//
//  Created by sandy on 10/4/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.commonUI

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
