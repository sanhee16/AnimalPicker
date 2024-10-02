//
//  Project.swift
//  Manifests
//
//  Created by sandy on 9/30/24.
//

import ProjectDescription

import ProjectDescriptionHelpers

let module = Module.networkKit

var project = Project.kitFramework(
    name: module.name,
    dependencies: [
        .external(name: "Alamofire")
//        .spm.Alamofire
    ]
)
