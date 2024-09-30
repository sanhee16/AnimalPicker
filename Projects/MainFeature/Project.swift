//
//  Project.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let name = "MainFeature"

var project = Project.featureFramework(name: name, dependencies: [
    .project(target: "Core", path: "../Core")
])
