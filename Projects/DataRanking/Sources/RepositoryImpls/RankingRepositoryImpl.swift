//
//  RankingRepositoryImpl.swift
//  DataRanking
//
//  Created by sandy on 10/7/24.
//

import DomainRanking
import Foundation

public class RankingRepositoryImpl: RankingRepository {
    let name: [String] = ["Zeus", "Oner", "Faker", "Gumayusi", "Keria"]
    public init() { }
    
    public func getRankings(level: LevelEntity) -> [DomainRanking.RankingEntity] {
        var cnt: Int = (20..<100).randomElement()!
        var result: [RankingEntity] = []
        for i in 0..<cnt {
            result.append(RankingEntity(id: UUID().uuidString, userName: name.randomElement()!, score: (100..<900).randomElement()!, level: level, createdAt: (1610330334..<1728611934).randomElement()!))
        }
        return result
    }
}
