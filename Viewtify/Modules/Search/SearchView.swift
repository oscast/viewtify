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
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        ZStack {
            Color(backgroundColor)
                .ignoresSafeArea(.all)
            ScrollView {
                HStack {
                    Text("Search")
                        .font(.system(size: 35, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Spacer()
                }
                
                LazyVStack(alignment: .leading, spacing: 27, pinnedViews: [.sectionHeaders], content: {
                    Section(header: SearchSectionView(text: $textfieldText)
                                .padding(.bottom, -17), content: {
                                    ForEach(sections, id: (\.self)) { section in
                                        MusicSectionGrid(section: section)
                                    }
                                } )
                })
                .padding(.horizontal, 16)
            }
            .padding(.top, 8)
            .padding(.bottom, 16)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
