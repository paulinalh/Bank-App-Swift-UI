//
//  Searchbar.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 15/11/23.
//

import SwiftUI

struct Searchbar: View {
    
    @Binding var searchText: String
    @Binding var isLeftModalPresented: Bool
    @Binding var isRightModalPresented: Bool

    
    var body: some View {
        HStack{
            
            //TODO: add the indicator and the animation
            
            Button(action: {
                isLeftModalPresented.toggle()
            }) {
                Image(systemName: "camera")
                // Profile picture
                    .foregroundColor(.white)
                    .frame(width:40, height: 40)
                    .background(ColorSets.tertiaryColor)
                    .cornerRadius(200)
                    .padding(.horizontal, 1)
            }.padding(.horizontal, 5)
                .accessibilityLabel("Profile Picture")
                .accessibilityHint("Click twice for opening profile settings")
            
            HStack {
                Image(systemName: "magnifyingglass") // Search icon
                    .padding(.leading, 10)
                    .foregroundColor(.white)
                
                ZStack(alignment: .leading){
                    if searchText.isEmpty {
                        
                        Text("Search")
                            .foregroundColor(.white)
                        
                    }
                    
                    TextField("", text: $searchText)
                        .foregroundColor(.white)
                }
                
                
                
                Button(action: {
                    // Clear the text in the search bar
                    self.searchText = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .opacity(searchText == "" ? 0 : 1)
                        .foregroundColor(.white)
                    
                }
                .padding(.trailing, 10)
            }
            .padding(7)
            .padding(.horizontal, 5)
            .background(ColorSets.secondaryColor)
            .cornerRadius(50)
            .padding(.horizontal, 5)
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Search bar")
            
            Button(action: {
                //TODO: add action
            }) {
                Image(systemName: "chart.bar.fill") // chart bar
                    .foregroundColor(.white)
                    .frame(width:40, height: 40)
                    .background(ColorSets.secondaryColor)
                    .cornerRadius(200)
                    .padding(.horizontal, 1)
            }.padding(.horizontal, 5)
                .accessibilityLabel("Charts buttons")
                
            
            Button(action: {
                isRightModalPresented.toggle()
            }) {
                
                Image(systemName: "creditcard") // Credit card
                    .foregroundColor(.white)
                    .frame(width:40, height: 40)
                    .background(ColorSets.secondaryColor)
                    .cornerRadius(200)
                    .padding(.horizontal, 1)
            }.padding(.horizontal, 5)
                .accessibilityLabel("Cards button")
                .accessibilityHint("Click twice for opening cards settings")
        }
        .frame(height: 60)
        .background(ColorSets.primaryColor)
        
    }
}

#Preview {
    Searchbar(searchText: .constant("text"), isLeftModalPresented: .constant(false), isRightModalPresented: .constant(true))
}
