//
//  HomeView.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 15/11/23.
//

import SwiftUI

struct HomeView: View {
    @State private var text = ""
    
    
    var body: some View {
        NavigationStack {
            
            Searchbar(searchText: $text)
            
            ScrollView{
                MainHeader()
                TransactionsList()
            }.padding(.vertical, -10)
        }
        
    }
    
}

#Preview {
    HomeView()
}
