//
//  ContentView.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 15/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        TabView {
            Group{
                // Tab 1: Home
                HomeView()
                    .tabItem {
                        Image(systemName: "parkingsign")
                            .fontWeight(.bold)
                        Text("Home")
                    }
                
                // Tab 2: Invest
                NavigationStack {
                    VStack {
                        Text("Invest Tab Content")
                    }
                    .navigationBarTitle("Tab 2", displayMode: .inline)
                }
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                        .fontWeight(.bold)
                    Text("Invest")
                }
                
                // Tab 3: Transfer
                NavigationStack {
                    VStack {
                        Text("Transfer Tab Content")
                    }
                    .navigationBarTitle("Tab 2", displayMode: .inline)
                }
                .tabItem {
                    Image(systemName: "arrow.left.arrow.right")
                        .fontWeight(.bold)
                    Text("Transfer")
                    
                }
                // Tab 4: Crypto
                NavigationStack {
                    VStack {
                        Text("Crypto Tab Content")
                    }
                    .navigationBarTitle("Tab 2", displayMode: .inline)
                }
                .tabItem {
                    Image(systemName: "bitcoinsign")
                        .fontWeight(.bold)
                    Text("Crypto")
                }
                // Tab 5: LifeStyle
                NavigationStack {
                    VStack {
                        Text("Lifestyle Tab Content")
                    }
                    .navigationBarTitle("Tab 2", displayMode: .inline)
                }
                
                .tabItem {
                    Image(systemName: "suitcase.rolling.fill")
                        .font(.system(size: 20, weight: .bold))
                    Text("Lifestyle")
                }
            }
            .toolbarBackground(.black.opacity(0.5), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
