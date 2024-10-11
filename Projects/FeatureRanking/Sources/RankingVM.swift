//
//  RankingVM.swift
//  FeatureRanking
//
//  Created by sandy on 10/11/24.
//

import Combine
import DIContainer
import DomainRanking
import Factory

class RankingVM: ObservableObject {
    @Injected(\.getRankingUseCase) var getRankingUseCase
    @Injected(\.getLevelUseCase) var getLevelUseCase
//    var totalRankings: [RankingEntity] = []
    @Published var rankings: [RankingEntity] = []
    @Published var levels: [LevelEntity] = []
    
    init() {
        getLevels()
    }
    
    private func getLevels() {
        self.levels = self.getLevelUseCase.execute()
    }
    
    func getRanking(_ level: LevelEntity) {
        self.rankings = getRankingUseCase.execute(level)
    }
    
    
}
