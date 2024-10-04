//
//  Project.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.featureMain

var project = Project.featureFramework(name: module.name, dependencies: [
    .project(target: Module.core.name, path: Module.core.path)
])
