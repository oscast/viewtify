//
//  TabbedView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/15/20.
//

import SwiftUI

struct TabbedView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "tabBarBackground")
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    HomeImage(.home)
                    Text("Home")
                }
            SearchView()
                .tabItem {
                    SystemImage(.search)
                    Text("Search")
                }
        }
        .accentColor(.white)
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}


struct SystemImage: View {
    let systemIcon: SystemIcons
    
    init(_ systemIcon: SystemIcons) {
        self.systemIcon = systemIcon
    }
    
    var body: some View {
        Image(systemName: systemIcon.rawValue)
    }
}

struct HomeImage: View {
    let icon: HomeIcons
    
    init(_ icon: HomeIcons) {
        self.icon = icon
    }
    
    var body: some View {
        Image(icon.rawValue)
    }
}
