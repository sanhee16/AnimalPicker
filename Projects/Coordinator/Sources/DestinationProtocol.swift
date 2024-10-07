//
//  DestinationProtocol.swift
//  Coordinator
//
//  Created by sandy on 10/7/24.
//

import SwiftUI

public protocol DestinationProtocol: Hashable {
    var viewName: String { get }
}

public extension DestinationProtocol {
    static func == (lhs: any DestinationProtocol, rhs: any DestinationProtocol) -> Bool {
        return lhs.viewName == rhs.viewName
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.viewName)
    }
}
