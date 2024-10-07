//
//  UINavigationController+Extension.swift
//  Coordinator
//
//  Created by sandy on 10/7/24.
//

import SwiftUI

// navigationBarHidden일 때 swipe back gesture가 작동하지 않는 이슈
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
