//
//  GreeetingsCard.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/28/20.
//

import SwiftUI

struct GreeetingsCardView: View {
    
    let cardText: String
    let cardColor = SpotifyColors.homeCardGray
    static var cellApectRatio: CGFloat {
        ((( UIScreen.width / 2) - 16.0) * 0.29946524)
    }
    
    var body: some View {
        ZStack {
            HStack(alignment: .center, spacing: 8, content: {
                Image("luke-chesser")
                    .resizable()
                    .frame(width: GreeetingsCardView.cellApectRatio, height: GreeetingsCardView.cellApectRatio)
                Text(cardText)
                    .foregroundColor(.white)
                    .font(.system(size: 11, weight: .bold, design: .default))
                Spacer()
            })
        }
        .background(cardColor)
        .cornerRadius(4)
    }
}

struct GreeetingsCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            GreeetingsCardView(cardText: "Music Test")
                .frame(width: ((( UIScreen.width / 2) - 16.0)), height: GreeetingsCardView.cellApectRatio, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}
