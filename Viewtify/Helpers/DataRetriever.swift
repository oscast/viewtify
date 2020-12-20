//
//  DataRetriever.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/16/20.
//

import UIKit

struct SearchSection: Hashable {
    let title: String
    let genres: [MusicGenre]
}

struct MusicGenre: Hashable {
    let name: String
    let firstColor: String
    let secondColor: String
}


enum DataRetriever: Hashable {
    static func getSearchData() -> [SearchSection] {
        let topGenres: [MusicGenre] = [
            MusicGenre(name: "Rock", firstColor: "redHigh", secondColor: "redLow"),
            MusicGenre(name: "Dance/\nElectronic", firstColor: "cyanHigh", secondColor: "cyanLow"),
            MusicGenre(name: "Metal", firstColor: "metal", secondColor: "metal"),
            MusicGenre(name: "Pop", firstColor: "muskLow", secondColor: "muskHigh")
        ]
        
        let browseAllGenres: [MusicGenre] = [
            MusicGenre(name: "Podcasts", firstColor: "yellowSolid", secondColor: "yellowSolid"),
            MusicGenre(name: "Made for you", firstColor: "greenHigh", secondColor: "greenLow"),
            MusicGenre(name: "Study\n Jams", firstColor: "oceanLow", secondColor: "oceanHigh"),
            MusicGenre(name: "Chill Out", firstColor: "mustardLow", secondColor: "mustardHigh"),
            MusicGenre(name: "Comedy", firstColor: "blueSolid", secondColor: "blueSolid"),
            MusicGenre(name: "Romance", firstColor: "pinkLow", secondColor: "pinkHigh"),
            MusicGenre(name: "2020\nWrapped", firstColor: "cyanLow", secondColor: "cyanHigh"),
            MusicGenre(name: "Discover", firstColor: "purpleLow", secondColor: "purpleHigh"),
            MusicGenre(name: "Concerts", firstColor: "orangeSolid", secondColor: "orangeSolid"),
            MusicGenre(name: "Happy\nHollydays", firstColor: "wine", secondColor: "wine")
        ]
        
        let topSection = SearchSection(title: "Your top genres", genres: topGenres)
        let browseAllSection = SearchSection(title: "Browse all", genres: browseAllGenres)
        
        return [topSection, browseAllSection]
    }
}
