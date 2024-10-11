//
//  UIImage+Extension.swift
//  UI
//
//  Created by sandy on 10/4/24.
//

import SwiftUI
import UIKit

public extension UIImage {
    func image() -> Image {
        Image(uiImage: self)
    }
}
