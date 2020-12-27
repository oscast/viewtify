//
//  MusicSectionGridView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/26/20.
//

import SwiftUI

struct MusicSectionGrid: View {
    
    static var cellApectRatio: CGFloat {
        ((( UIScreen.width / 2) - 32.0) * 0.5683)
    }
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    let section: SearchSection
    
    var body: some View {
        LazyVStack(spacing: 27) {
            HStack {
                Text(section.title)
                    .SearchGenresTitleStyle()
                Spacer()
            }
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(section.genres, id: \.self) { (genre: MusicGenre) in
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: [Color(genre.firstColor),
                                                                   Color(genre.secondColor)]),
                                       startPoint: .top, endPoint: .bottom)
                            .cornerRadius(5)
                            .frame(height: MusicSectionGrid.cellApectRatio)
                        CardViewText(cardText: genre.name)
                    }
                }
            }
            // End LazyVGrid
        }
        // End Vertical Stack
    }
}

struct MusicSectionGridView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea(.all)
            MusicSectionGrid(
                section: SearchSection(
                    title: "Section Genre", genres: [
                        MusicGenre(name: "test",
                                   firstColor: "orangeHigh",
                                   secondColor: "orangeLow"),
                        MusicGenre(name: "test",
                                   firstColor: "redHigh",
                                   secondColor: "redLow")
                    ])
            )
        }
    }
}
