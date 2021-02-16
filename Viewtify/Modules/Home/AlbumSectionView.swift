//
//  AlbumMusicView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 1/5/21.
//

import SwiftUI

struct AlbumSectionView: View {
    
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 22) {
            Text("Music Section")
                .foregroundColor(.white)
                .font(.system(size: 20.7, weight: .bold, design: .default))
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 16) {
                    AlbumView()
                        .frame(width: 124, height: 145)
                    AlbumView()
                        .frame(width: 124, height: 145)
                    AlbumView()
                        .frame(width: 124, height: 145)
                    AlbumView()
                        .frame(width: 124, height: 145)
                    AlbumView()
                        .frame(width: 124, height: 145)
                }
            }
            
        }
    }
}

struct AlbumMusicView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            AlbumSectionView()
        }
    }
}
