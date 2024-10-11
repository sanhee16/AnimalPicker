//
//  RankingEntity.swift
//  DomainRanking
//
//  Created by sandy on 10/7/24.
//

public struct RankingEntity: Identifiable {
    public var id: String
    public var userName: String
    public var score: Int
    public var level: LevelEntity
    public var createdAt: Int
    
    public init(id: String, userName: String, score: Int, level: LevelEntity, createdAt: Int) {
        self.id = id
        self.userName = userName
        self.score = score
        self.level = level
        self.createdAt = createdAt
    }
}
