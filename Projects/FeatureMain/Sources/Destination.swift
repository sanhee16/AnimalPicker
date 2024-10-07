//
//  Destination.swift
//  FeatureMain
//
//  Created by sandy on 10/7/24.
//

import Foundation
import Coordinator
import FeatureSplash
import SwiftUI

public enum Destination: DestinationProtocol {
    case main
    case splash
    
    public var viewName: String {
        switch self {
        case .main:
            return "main"
        case .splash:
            return "splash"
        }
    }
    
    @ViewBuilder
    public var view: some View {
        switch self {
        case .main:
            MainView()
        case .splash:
            SplashView()
        }
    }
}

