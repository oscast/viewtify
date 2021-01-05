//
//  HomeView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/26/20.
//

import SwiftUI

struct HomeView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            SpotifyColors.mainBackground
                .ignoresSafeArea()
            VStack {
                HStack{
                    Spacer()
                    SystemImage(.home)
                        .foregroundColor(.white)
                        .padding()
                }
                Spacer()
            }
            ScrollView {
                HStack {
                    Text("Hello")
                        .foregroundColor(.white)
                    Spacer()
                }
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(0 ..< 4) { number in
                        GreeetingsCardView(cardText: "test")
                    }
                }
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
