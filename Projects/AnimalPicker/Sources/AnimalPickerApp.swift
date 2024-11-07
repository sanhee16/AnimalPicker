//
//  AnimalPickerApp.swift
//  AppManifests
//
//  Created by sandy on 9/30/24.
//

import SwiftUI
import FeatureMain
import FeatureRanking
import DomainRanking
import DataRanking
import DIContainer

@main
struct AnimalPickerApp: App {
    let useCaseContainer: UseCaseContainer = UseCaseContainer(repositoryContainer: RepositoryContainer())
    @StateObject private var rankingVM: RankingVM = RankingVM()
    
    var body: some Scene {
        WindowGroup {
            RankingView()
                .environmentObject(rankingVM)
                .onAppear {
                    rankingVM.attachUseCases(
                        getRankingUseCase: useCaseContainer.getRankingUseCase,
                        getLevelUseCase: useCaseContainer.getLevelUseCase
                    )
                }
        }
    }
}

//extension Container: RepositoryDIContainer {
//    public var rankingRepository: Factory<RankingRepository> {
//        Factory(self) { RankingRepositoryImpl() }.singleton
//    }
//
//    public var levelRepository: Factory<LevelRepository> {
//        Factory(self) { LevelRepositoryImpl() }.singleton
//    }
//}
//
//extension Container: UseCaseDIContainer {
//    public var getRankingUseCase: Factory<GetRankingUseCase> {
//        Factory(self) {
//            GetRankingUseCase(rankingRepository: self.rankingRepository())
//        }
//    }
//    public var getLevelUseCase: Factory<GetLevelUseCase> {
//        Factory(self) {
//            GetLevelUseCase(levelRepository: self.levelRepository())
//        }
//    }
//}
