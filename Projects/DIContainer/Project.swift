//
//  Project.swift
//  Manifests
//
//  Created by sandy on 10/7/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.diContainer

var project = Project(
    name: module.name,
    targets: [
        kit(
            module: module,
            dependencies: [
                Module.domainRanking.project,
                Module.dataRanking.project,
                .external(name: "Factory"),
            ]
        )
    ]
)
