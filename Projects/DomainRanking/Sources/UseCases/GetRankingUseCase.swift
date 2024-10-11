//
//  GetRankingUseCase.swift
//  DomainRanking
//
//  Created by sandy on 10/7/24.
//

public class GetRankingUseCase {
    var rankingRepository: RankingRepository
    
    public init(rankingRepository: RankingRepository) {
        self.rankingRepository = rankingRepository
    }
    
    public func execute(_ level: LevelEntity) -> [RankingEntity] {
        return self.rankingRepository.getRankings(level: level)
    }
}
