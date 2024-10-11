//
//  Project.swift
//  Manifests
//
//  Created by sandy on 10/7/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.dataRanking

var project = Project(
    name: module.name,
    targets: [
        data(
            module: module,
            dependencies: [
                Module.domainRanking.project,
            ]
        )
    ]
)

