//
//  LevelEntity.swift
//  DomainRanking
//
//  Created by sandy on 10/7/24.
//

public enum LevelEntity: String, Codable {
    case easy = "Easy"
    case normal = "Normal"
    case hard = "Hard"
    case hell = "Hell"
    
    public var backgroundColor: String {
        switch self {
        case .easy:
            return "#ffeb3a"
        case .normal:
            return "#4ACB22"
        case .hard:
            return "#4D8EFF"
        case .hell:
            return "#f44336"
        }
    }
}
