//
//  RankingView.swift
//  FeatureRanking
//
//  Created by sandy on 10/7/24.
//

import SwiftUI
import CommonUI
import DomainRanking

public struct RankingView: View {
    @StateObject private var vm: RankingVM = RankingVM()
    @State private var currentLevel: LevelEntity = .easy
    @State private var rankLocation: CGRect = CGRect.zero
    @State private var nicknameLocation: CGRect = CGRect.zero
    @State private var scoreLocation: CGRect = CGRect.zero
    
    
    let padding: CGFloat = 3.0
    
    public init() {
        
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            levelSelector()
            rankHeader()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 0, content: {
                    ForEach($vm.rankings.wrappedValue.indices, id: \.self) { idx in
                        HStack(alignment: .center, spacing: 0, content: {
                            rankingItem(idx + 1, rankingData: $vm.rankings.wrappedValue[idx])
                        })
                        .paddingBottom(16)
                    }
                })
                .paddingVertical(20)
                .onAppear {
                    vm.getRanking(currentLevel)
                }
            })
            Spacer()
        }
        .navigationBarBackButtonHidden()
    }
    
    private func rankHeader() -> some View {
        HStack(alignment: .center, spacing: 0, content: {
            Text("Rank")
                .font(.kr17b)
                .foregroundStyle(Color.black)
                .frame(width: 120, alignment: .center)
                .rectReader($rankLocation, in: .global)
            
            Text("Nickname")
                .font(.kr17b)
                .foregroundStyle(Color.black)
                .frame(maxWidth: .infinity, alignment: .center)
                .rectReader($nicknameLocation, in: .global)
            
            Text("Score")
                .font(.kr17b)
                .foregroundStyle(Color.black)
                .frame(width: 120, alignment: .center)
                .rectReader($scoreLocation, in: .global)
        })
        .paddingVertical(12)
        .background(Color.gray.opacity(0.12))
    }
    
    private func levelSelector() -> some View {
        HStack(alignment: .center, spacing: 0, content: {
            ForEach($vm.levels.wrappedValue, id: \.self) { item in
                Text(item.rawValue)
                    .font(item == currentLevel ? .kr18b : .kr18m)
                    .foregroundStyle(item == currentLevel ? Color.black.opacity(0.9) : Color.black.opacity(0.6))
                    .paddingVertical(10)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .foregroundStyle(item == currentLevel ? Color(hex: item.backgroundColor).opacity(0.6) : Color.clear)
                            .frame(width: UIScreen.main.bounds.size.width / CGFloat(vm.levels.count) - padding * 2, alignment: .center)
                    )
                    .frame(width: UIScreen.main.bounds.size.width / CGFloat(vm.levels.count), alignment: .center)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.currentLevel = item
                        vm.getRanking(currentLevel)
                    }
            }
        })
        .paddingVertical(6)
    }
    
    
    
    private func rankingItem(_ rank: Int, rankingData: RankingEntity) -> some View {
        HStack(alignment: .center, spacing: 0, content: {
            Text("\(rank)")
                .font(rank < 4 ? .kr16m : .kr16r)
                .frame(width: $rankLocation.wrappedValue.width, alignment: .center)
            
            Text(rankingData.userName)
                .font(.kr20m)
                .frame(width: $nicknameLocation.wrappedValue.width, alignment: .center)
            
            Text("\(rankingData.score)")
                .font(.kr16r)
                .frame(width: $scoreLocation.wrappedValue.width, alignment: .center)
        })
    }
    
}
