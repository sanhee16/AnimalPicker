//
//  RankingVM.swift
//  FeatureRanking
//
//  Created by sandy on 10/11/24.
//

import Combine
import DomainRanking

public class RankingVM: ObservableObject {
    private var getRankingUseCase: GetRankingUseCase? = nil
    private var getLevelUseCase: GetLevelUseCase? = nil
    @Published var rankings: [RankingEntity] = []
    @Published var levels: [LevelEntity] = []
    
    public init() {
//        getLevels()
    }
    
    public func attachUseCases(getRankingUseCase: GetRankingUseCase, getLevelUseCase: GetLevelUseCase) {
        self.getRankingUseCase = getRankingUseCase
        self.getLevelUseCase = getLevelUseCase
    }
    
    private func getLevels() {
        guard let getLevelUseCase = getLevelUseCase else { return }
        self.levels = getLevelUseCase.execute()
    }
    
    func getRanking(_ level: LevelEntity) {
        guard let getRankingUseCase = getRankingUseCase else { return }
        self.rankings = getRankingUseCase.execute(level)
    }
    
    
}
