//
//  HomeView.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 15/11/23.
//

import SwiftUI

struct HomeView: View {
    @State private var text = ""
    @Binding var isLeftModalPresented: Bool
    @Binding var isRightModalPresented: Bool

    
    var body: some View {
        NavigationStack {
            
            Searchbar(searchText: $text, isLeftModalPresented: $isLeftModalPresented, isRightModalPresented: $isRightModalPresented).accessibilityLabel("Searchbar")
            
            ScrollView{
                MainHeader()
                TransactionsList().accessibilityLabel("Transactions List")
                
                HStack{
                    
                    Text("Widgets")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "plus")
                        .foregroundColor(.accentColor)
                        .frame(width:40, height: 40)
                        .cornerRadius(200)
                        .padding(.horizontal, 1)
                        .fontWeight(.bold)
                    
                }.padding(.horizontal, 20)
                
                CardsWidget()
                
                
            }.padding(.vertical, -10)
        }
        
    }
    
}

#Preview {
    HomeView(isLeftModalPresented: .constant(false), isRightModalPresented: .constant(true))
}
