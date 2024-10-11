//
//  Destination.swift
//  FeatureMain
//
//  Created by sandy on 10/7/24.
//

import Foundation
import Coordinator
import FeatureRanking
import SwiftUI

public enum Destination: DestinationProtocol {
    case main
    case ranking
    
    public var viewName: String {
        switch self {
        case .main:
            return "main"
        case .ranking:
            return "ranking"
        }
    }
    
    @ViewBuilder
    public var view: some View {
        switch self {
        case .main:
            MainView()
        case .ranking:
            RankingView()
        }
    }
}

