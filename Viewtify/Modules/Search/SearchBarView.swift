//
//  SearchBarView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 12/23/20.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    @State private var isEditing = false
        
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
            TextField("", text: $text)
                .frame(height: 40, alignment: .center)
                .background(Color(.white))
                .cornerRadius(6)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .leading)
                            .foregroundColor(.black)
                            .padding(.leading, 15)
                        Spacer()
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                                
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .onTapGesture {
                    self.isEditing = true
                }
                if text.isEmpty {
                    Text("Artists, Songs or Podcasts").foregroundColor(.black)
                        .padding(.leading, 43)
                        .font(.system(size: 13.5, weight: .regular, design: .default))
                }
                
        }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    
                    // Dismiss the keyboard
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            SearchBarView(text: .constant(""))
            
        }
    }
}
