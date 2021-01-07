//
//  Viewtify + Modifiers.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/26/20.
//

import SwiftUI

struct SearchGenresSectionTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 17, weight: .bold, design: .default))
    }
}

extension View {
    func SearchGenresTitleStyle() -> some View {
        self.modifier(SearchGenresSectionTitle())
    }
}
