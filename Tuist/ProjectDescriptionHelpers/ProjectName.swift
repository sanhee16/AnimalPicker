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
    case splashFeature
    case mainFeature
}

extension Module {
    public var name: String {
        switch self {
        case .app:
            return "App"
        case .core:
            return "Core"
        case .splashFeature:
            return "SplashFeature"
        case .mainFeature:
            return "MainFeature"
        }
    }
    
    public var path: ProjectDescription.Path {
        return .relativeToRoot("Project/" + self.name)
    }
    
    public var project: TargetDependency {
        return .project(target: self.name, path: self.path)
    }
}

extension Module: CaseIterable { }
