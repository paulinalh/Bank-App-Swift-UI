//
//  ContentView.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 15/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var isLeftModalPresented = false
    @State private var isTopModalPresented = false
    @State private var isRightModalPresented = false
    @State private var offset: CGFloat = 0
    
    var body: some View {
        //Left Drawer
        GeometryReader { geometry in
            ZStack {
                // Main content
                TabView {
                    Group{
                        // Tab 1: Home
                        HomeView(isLeftModalPresented: $isLeftModalPresented, isRightModalPresented: $isRightModalPresented)
                            .tabItem {
                                Image(systemName: "parkingsign")
                                    .fontWeight(.bold)
                                Text("Home")
                            }
                        
                        // Tab 2: Invest
                        NavigationStack {
                            VStack {
                                Text("Invest Tab Content")
                                Button("Show Modal") {
                                    //isLeftModalPresented.toggle()
                                }
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
                    .toolbarBackground(ColorSets.DarkGray, for: .tabBar)
                    .toolbarBackground(.visible, for: .tabBar)
                    .toolbarColorScheme(.dark, for: .tabBar)
                }
                .preferredColorScheme(.dark)
                
                // Drawer content
                ProfileDrawer(isDrawerOpen: $isLeftModalPresented)
                    .navigationBarHidden(true)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: isLeftModalPresented ? 0 : -geometry.size.width / 2 + offset)
                    
                
                // Drag gesture to handle opening and closing drawer
                if !isLeftModalPresented {
                    Rectangle()
                        .foregroundColor(Color.clear)
                        .contentShape(Rectangle())
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    withAnimation {
                                        offset = value.translation.width
                                    }
                                }
                                .onEnded { value in
                                    if value.translation.width > geometry.size.width * 0.4 {
                                        isLeftModalPresented = true

                                    } else {
                                        withAnimation {
                                            offset = 0
                                        }
                                    }
                                }
                        )
                }
                
                // Drawer content
                CardDrawer(isDrawerOpen: $isRightModalPresented)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .offset(x: isRightModalPresented ? 0 : geometry.size.width * 2 - offset )
                    .navigationBarHidden(true)
                
                // Drag gesture to handle opening and closing drawer
                if !isRightModalPresented {
                    Rectangle()
                        .foregroundColor(Color.clear)
                        .contentShape(Rectangle())
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    withAnimation {
                                        offset = value.translation.width
                                    }
                                }
                                .onEnded { value in
                                    if value.translation.width > geometry.size.width * 0.4 {
                                        isRightModalPresented = true
                                    } else {
                                        withAnimation {
                                            offset = 0
                                        }
                                    }
                                }
                        )
                }
            }
        }
    }
    
    
    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
