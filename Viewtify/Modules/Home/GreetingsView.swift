//
//  GreetingsView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 1/5/21.
//

import SwiftUI

struct GreetingsView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    let verticalSpacing: CGFloat = 15
    
    var body: some View {
        VStack(spacing: verticalSpacing) {
            HStack {
                Text("Good Afternoon")
                    .foregroundColor(.white)
                    .font(.system(size: 21, weight: .bold, design: .default))
                Spacer()
            }
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(0 ..< 6) { number in
                    GreeetingsCardView()
                }
            }
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            GreetingsView()
        }
        .padding()
        .background(Color.black)
    }
}
