//
//  Project.swift
//  Manifests
//
//  Created by sandy on 10/7/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.domainRanking

var project = Project(
    name: module.name,
    targets: [
        domain(
            module: module,
            dependencies: [
            ]
        )
    ]
)

