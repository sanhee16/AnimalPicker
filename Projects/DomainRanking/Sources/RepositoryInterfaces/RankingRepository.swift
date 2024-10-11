//
//  RankingRepository.swift
//  DomainRanking
//
//  Created by sandy on 10/7/24.
//

public protocol RankingRepository {
    func getRankings(level: LevelEntity) -> [RankingEntity]
}
