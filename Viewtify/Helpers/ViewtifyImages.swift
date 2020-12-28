//
//  ViewtifyImages.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/15/20.
//

import UIKit

enum SystemIcons: String {
    case search = "magnifyingglass"
    case home = "house.fill"
    
    func make() -> UIImage {
        UIImage(systemName: self.rawValue) ?? UIImage()
    }
}
