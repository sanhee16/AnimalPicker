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
    case splash
    case main
}

extension Module {
    public var name: String {
        switch self {
        case .app:
            return "App"
        case .core:
            return "Core"
        case .splash:
            return "Splash"
        case .main:
            return "Main"
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
