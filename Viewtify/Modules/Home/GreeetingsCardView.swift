//
//  GreeetingsCard.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/28/20.
//

import SwiftUI

struct GreeetingsCardView: View {
    
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
                VStack(alignment: .leading) {
                    Text("Music Name")
                        .foregroundColor(.white)
                        .font(.system(size: 11, weight: .bold, design: .default))
                        .lineLimit(1)
                    Text("Artist")
                        .foregroundColor(.white)
                        .font(.system(size: 11, weight: .bold, design: .default))
                        .lineLimit(1)
                }
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
            GreeetingsCardView()
                .frame(width: ((( UIScreen.width / 2) - 16.0)), height: GreeetingsCardView.cellApectRatio, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}
