//
//  GetLevelUseCase.swift
//  DomainRanking
//
//  Created by sandy on 10/11/24.
//

public class GetLevelUseCase {
    var levelRepository: LevelRepository
    
    public init(levelRepository: LevelRepository) {
        self.levelRepository = levelRepository
    }
    
    public func execute() -> [LevelEntity] {
        return self.levelRepository.getLevels()
    }
}
