//
//  Project.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let module = Module.splashFeature

var project = Project.featureFramework(name: module.name, dependencies: [
    .project(target: "Core", path: "../Core")
])
