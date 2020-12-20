//
//  ViewtifyColors.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/15/20.
//

import UIKit

protocol ColorMakerType {
    func make() -> UIColor
}

enum ViewtifyColors {
    enum Backgrounds: String, ColorMakerType {
        
        case tabBarBackground
        case mainBackground
        
        func make() -> UIColor {
            UIColor(named: self.rawValue) ?? UIColor()
        }
    }
}

enum StyleGradients: String, ColorMakerType {
    case redHigh
    case redLow
    
    func make() -> UIColor {
        UIColor(named: self.rawValue) ?? .white
    }
}


