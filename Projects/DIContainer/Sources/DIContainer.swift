//
//  DIContainer.swift
//  DIContainer
//
//  Created by sandy on 10/7/24.
//

import Factory
import DomainRanking
import DataRanking

public extension Container {
    var rankingRepository: Factory<RankingRepository> {
        Factory(self) { RankingRepositoryImpl() }.singleton
    }
    
    var levelRepository: Factory<LevelRepository> {
        Factory(self) { LevelRepositoryImpl() }.singleton
    }
}

public extension Container {
    var getRankingUseCase: Factory<GetRankingUseCase> {
        Factory(self) {
            GetRankingUseCase(rankingRepository: self.rankingRepository())
        }
    }
    var getLevelUseCase: Factory<GetLevelUseCase> {
        Factory(self) {
            GetLevelUseCase(levelRepository: self.levelRepository())
        }
    }
}
