//
//  ProjectName.swift
//  AnimalPickerManifests
//
//  Created by sandy on 9/27/24.
//

import ProjectDescription

public enum Module {
    case app
    
    case featureSplash
    case featureMain
    
    case core
    case networkKit
    case ui
    case coordinator
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
        case .coordinator:
            return "Coordinator"
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
