//
//  Project.swift
//  Manifests
//
//  Created by sandy on 10/7/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.featureRanking

var project = Project(
    name: module.name,
    targets: [
        feature(
            module: module,
            dependencies: [
                Module.core.project,
                Module.commonUI.project,
                Module.coordinator.project,
                Module.domainRanking.project,
            ]
        )
    ]
)
