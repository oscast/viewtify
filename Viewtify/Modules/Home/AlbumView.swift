//
//  AlbumView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 1/5/21.
//

import SwiftUI

struct AlbumView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            Image("luke-chesser")
                .resizable()
            Text("Album Name")
                .foregroundColor(.white)
                .font(.system(size: 11, weight: .regular, design: .default))
        }
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            HStack {
                AlbumView()
            }
            .frame(width: 124, height: 145)
        }
    }
}
