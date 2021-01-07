//
//  HomeView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/26/20.
//

import SwiftUI

struct HomeView: View {
    
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
                LazyVStack(spacing: 51) {
                    GreetingsView()
                        .padding(.bottom, -18)
                    AlbumSectionView()
                    AlbumSectionView()
                    AlbumSectionView()
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
