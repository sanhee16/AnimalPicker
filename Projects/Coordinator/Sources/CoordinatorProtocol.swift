//
//  CoordinatorProtocol.swift
//  Coordinator
//
//  Created by sandy on 10/7/24.
//

import SwiftUI

public class AppCoordinator<T: DestinationProtocol>: ObservableObject {
    @Published public var paths: [T] = [] /*{ didSet { print("paths: \(paths)" )}}*/
    
    public init() {
        self.paths = []
    }
    
    public func push(_ destination: T) {
        self.paths.append(destination)
    }
    
    public func pop() {
        paths.removeLast()
    }
    
    public func pop(to: T) {
        guard let found = paths.firstIndex(where: { $0.viewName == to.viewName }) else {
            return
        }
        // 중복된 View가 있어도 맨 처음 push된 View로 pop시킨다.
        let numToPop = (found..<paths.endIndex).count - 1
        paths.removeLast(numToPop)
    }
    
    public func popToRoot() {
        paths.removeAll()
    }
}
