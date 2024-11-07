//
//  UseCaseContainer.swift
//  DIContainer
//
//  Created by sandy on 10/7/24.
//

//import Factory
import DomainRanking
import DataRanking

public class UseCaseContainer {
    var repositoryContainer: RepositoryContainer
    
    public init(repositoryContainer: RepositoryContainer) {
        self.repositoryContainer = repositoryContainer
    }
    
    public var getRankingUseCase: GetRankingUseCase {
        GetRankingUseCase(rankingRepository: self.repositoryContainer.rankingRepository)
    }

    public var getLevelUseCase: GetLevelUseCase {
        GetLevelUseCase(levelRepository: self.repositoryContainer.levelRepository)
    }
}
