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
    case featureRanking
    
    case diContainer
    case core
    case networkKit
    case commonUI
    case coordinator
    
    case domainRanking
    
    
    case dataRanking
}

extension Module {
    public var name: String {
        switch self {
        case .app:
            return "App"
        case .diContainer:
            return "DIContainer"
        case .core:
            return "Core"
        case .featureSplash:
            return "FeatureSplash"
        case .featureMain:
            return "FeatureMain"
        case .featureRanking:
            return "FeatureRanking"
        case .networkKit:
            return "NetworkKit"
        case .commonUI:
            return "CommonUI"
        case .coordinator:
            return "Coordinator"
        case .domainRanking:
            return "DomainRanking"
        case .dataRanking:
            return "DataRanking"
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
