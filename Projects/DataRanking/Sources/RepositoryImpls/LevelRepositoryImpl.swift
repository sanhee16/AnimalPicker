//
//  LevelRepositoryImpl.swift
//  DataRanking
//
//  Created by sandy on 10/11/24.
//
import DomainRanking

public class LevelRepositoryImpl: LevelRepository {
    public init() { }
    
    public func getLevels() -> [DomainRanking.LevelEntity] {
        return [
            .easy,
            .normal,
            .hard,
            .hell
        ]
    }
}

