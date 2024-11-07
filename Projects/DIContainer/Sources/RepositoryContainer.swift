//
//  RepositoryContainer.swift
//  DIContainer
//
//  Created by sandy on 10/22/24.
//

//import Factory
import DomainRanking
import DataRanking

public class RepositoryContainer {
    public init() {
        
    }
    
    public var rankingRepository: RankingRepository {
        RankingRepositoryImpl()
    }
    
    public var levelRepository: LevelRepository {
        LevelRepositoryImpl()
    }
}
