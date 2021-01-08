//
//  HomeView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/26/20.
//

import SwiftUI

struct HomeView: View {
    
    @State var settingsAlpha: Double = 0.0
    
    var body: some View {
        ZStack {
            SpotifyColors.mainBackground
                .ignoresSafeArea()
            
            GeometryReader { geometry in
                TotalScrollView(axes: [.vertical], onOffsetChange: { offset in
                    let geometryHeight = geometry.size.height
                    
                    settingsAlpha = (Double((geometryHeight / 2.5 ) + offset)) / 100
                    print(settingsAlpha)
                }, content: {
                    LazyVStack(spacing: 51) {
                        GreetingsView()
                            .padding(.bottom, -18)
                        AlbumSectionView()
                        AlbumSectionView()
                        AlbumSectionView()
                    }
                })
                .padding()
            }
            
            VStack {
                HStack{
                    Spacer()
                    HomeImage(.settings)
                        .foregroundColor(.white)
                        .padding()
                        .opacity(settingsAlpha)
                }
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
