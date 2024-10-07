//
//  Destination.swift
//  AppCoordinator
//
//  Created by sandy on 10/7/24.
//

import SwiftUI
import FeatureMain
import Coordinator

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
    public var view: any View {
        switch self {
        case .main:
            MainView()
        case .ranking:
            MainView()
        }
    }
}
