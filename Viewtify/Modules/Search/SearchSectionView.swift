//
//  SearchSectionView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/25/20.
//

import SwiftUI

struct SearchSectionView: View {
    
    @Binding var text: String
    
    var body: some View {
        VStack(spacing: 0) {
            SearchBarView(text: $text)
            Color(ColorPallete.Backgrounds.mainBackground.make())
                .frame(height: 16)
        }
    }
}

struct SearchSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            SearchBarView(text: .constant(""))
        }
    }
}
