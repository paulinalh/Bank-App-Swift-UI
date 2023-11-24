//
//  CardDrawer.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 17/11/23.
//

import SwiftUI

struct CardDrawer: View {
    @Binding var isDrawerOpen : Bool
    
    var body: some View {
        ZStack {
            // Main content
            Color.black.edgesIgnoringSafeArea(.all).opacity(0.8)
            
            ScrollView{
                HStack{
                    Button(action: {
                        print("...")
                        isDrawerOpen = false
                    }, label: {
                        Image(systemName: "xmark")
                    }).foregroundColor(ColorSets.tertiaryColor).padding(20)
                    
                    Spacer()
                }
                
                Text("Cards")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .center){
                    
                    ZStack(alignment: .leading){
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(height: 200)
                            .opacity(0.3)
                        
                        VStack(alignment: .leading){
                            CardRow()
                            CardRow(cardName: "Virtual", color: .green)
                        }.padding(10)
                        
                    }.padding()
                    
                    ZStack(alignment: .leading){
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(height: 70)
                            .opacity(0.3)
                        
                        HStack(alignment: .center){
                            Image(systemName: "mappin")
                                .frame(width:40, height: 40)
                                .background(.white).opacity(0.5)
                                .cornerRadius(200)
                                .padding(.horizontal, 1)
                                .foregroundColor(.white)
                            
                            Text("Find ATMs near me")
                            
                            Image(systemName: "arrowtriangle.right.fill")
                                .frame(width:40, height: 40)
                                .foregroundColor(.white)
                            
                        }.padding(10)
                        
                    }.padding()
                    
                    Spacer()
                    
                        Button(action: {
                            
                        }, label: {
                            ZStack(alignment: .leading){
                                
                                RoundedRectangle(cornerRadius: 100)
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 40)
                                
                                
                                HStack{
                                    Image(systemName: "plus")
                                        .frame(width:40, height: 400)
                                        .cornerRadius(200)
                                        .padding(.horizontal, 1)
                                        .foregroundColor(.black)
                                    
                                    Text("Add new").foregroundColor(.black)
                                }.padding(10)
                                
                            }.padding()
                        })
                    
                    
                    
                    
                }.preferredColorScheme(.dark).opacity(0.8)
            }
            
        }.frame(width: UIScreen.main.bounds.width)
            .offset(x: isDrawerOpen ? 0 : -UIScreen.main.bounds.width / 1.5)
        .animation(.default)    }
}

#Preview {
    CardDrawer(isDrawerOpen: .constant(false))
}
