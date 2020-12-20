//
//  Color + Extensions.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/17/20.
//

import SwiftUI

extension Color {
    static let redHigh = Color("redHigh")
    static let redLow = Color("redLow")
}

extension Color {
    static func makeColor(color: String) -> Color {
        Color(color)
    }
}
