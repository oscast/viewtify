//
//  SearchView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/15/20.
//

import SwiftUI


struct SearchView: View {
    
    let backgroundColor = ViewtifyColors.Backgrounds.mainBackground.make()
    @State var textfieldText = ""
    let sections = DataRetriever.getSearchData()
    
    init() {
        let tableViewAppearance = UITableView.appearance()
        tableViewAppearance.backgroundColor = backgroundColor
        UITableViewCell.appearance().backgroundColor = .green
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        ZStack {
            Color(backgroundColor)
                .ignoresSafeArea(.all)
            List {
                Text("Search")
                    .font(.system(size: 35, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .listRowBackground(Color(backgroundColor))
                ForEach(sections, id: (\.self)) { section in
                    MusicSectionGrid(section: section)
                        .listRowBackground(Color(backgroundColor))
                        .background(Color(backgroundColor))
                }
                .padding(.bottom)
            }
            .padding(.top, 8)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


struct MusicSectionGrid: View {

    static var cellApectRatio: CGFloat {
        ((( UIScreen.width / 2) - 32.0) * 0.5683)
    }
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    let section: SearchSection
    
    var body: some View {
        VStack {
            HStack {
                Text(section.title)
                    .foregroundColor(.white)
                    .font(.system(size: 17, weight: .bold, design: .default))
                Spacer()
            }
            .padding(.bottom, 24)
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(section.genres, id: \.self) { (genre: MusicGenre) in
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: [Color(genre.firstColor),
                                                                   Color(genre.secondColor)]),
                                       startPoint: .top, endPoint: .bottom)
                            .cornerRadius(5)
                            .frame(height: MusicSectionGrid.cellApectRatio)
                        
                        HStack {
                            VStack {
                                Text(genre.name)
                                    .foregroundColor(.white)
                                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 8))
                                    .font(.system(size: 16, weight: .bold, design: .default))
                                Spacer()
                            }
                            .padding(.leading)
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}
