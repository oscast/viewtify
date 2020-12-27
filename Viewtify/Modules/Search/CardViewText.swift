//
//  CardView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/23/20.
//

import SwiftUI

struct CardViewText: View {
    
    let cardText: String
    
    var body: some View {
        HStack {
            VStack {
                Text(cardText)
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 8))
                Spacer()
            }
            .padding(.leading)
            Spacer()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            CardViewText(cardText: "Test")
        }
    }
}
