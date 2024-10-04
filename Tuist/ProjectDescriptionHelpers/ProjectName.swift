//
//  ProjectName.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription

public enum Module {
    case app
    case core
    case featureSplash
    case featureMain
    case networkKit
    case ui
}

extension Module {
    public var name: String {
        switch self {
        case .app:
            return "App"
        case .core:
            return "Core"
        case .featureSplash:
            return "FeatureSplash"
        case .featureMain:
            return "FeatureMain"
        case .networkKit:
            return "NetworkKit"
        case .ui:
            return "UI"
        }
    }
    
    public var path: ProjectDescription.Path {
        return .relativeToRoot("Projects/" + self.name)
    }
    
    public var project: TargetDependency {
        return .project(target: self.name, path: self.path)
    }
}

extension Module: CaseIterable { }
