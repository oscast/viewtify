//
//  ViewtifyColors.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/15/20.
//

import UIKit

enum ViewtifyColors {
    enum Backgrounds: String {
        case tabBarBackground
        
        func make() -> UIImage {
            UIImage(named: self.rawValue) ?? UIImage()
        }
    }
}
