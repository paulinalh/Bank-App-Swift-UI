//
//  MainHeader.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 16/11/23.
//

import SwiftUI

struct MainHeader: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [ColorSets.gradient1, ColorSets.gradient2, ColorSets.gradient3, ColorSets.gradient2, ColorSets.gradient4]), startPoint: .center, endPoint: .bottomTrailing)
            
            VStack{
                
                //Money and accounts text
                VStack{
                    
                    Text("Main · EUR")
                        .font(.subheadline)
                        .foregroundColor(.white).accessibilityLabel("Main currencye euros")
                    
                    
                        HStack(alignment: .bottom){
                            Text("€26")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                
                            
                            Text(".19")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }.accessibilityElement(children: .ignore)
                        .accessibilityLabel("26.19 euros")
                    
                    
                    Button(action: {
                        //TODO: add action
                    }) {
                        Text("Accounts")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 100)
                                    .fill(ColorSets.secondaryColor)
                            )
                    }.accessibilityLabel("accounts")
                    
                }
                //Buttons
                HStack (alignment: .top){
                    
                    //Add money button
                    Button(action: {
                        //TODO: add action
                    }) {
                        
                        VStack{
                            Image(systemName: "plus") // chart bar
                                .foregroundColor(.white)
                                .frame(width:40, height: 40)
                                .background(ColorSets.secondaryColor)
                                .cornerRadius(200)
                                .padding(.horizontal, 1)
                            
                            Text("Add money")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding()
                        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    }.accessibilityLabel("Add money")
                    .padding(-10)
                    
                    //Change button
                    Button(action: {
                        //TODO: add action
                    }) {
                        
                        VStack{
                            Image(systemName: "arrow.2.squarepath") // chart bar
                                .foregroundColor(.white)
                                .frame(width:40, height: 40)
                                .background(ColorSets.secondaryColor)
                                .cornerRadius(200)
                                .padding(.horizontal, 1)
                            
                            Text("Change")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding()
                        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    }.accessibilityLabel("Watch type of change")
                    .padding(-10)
                    
                    //Data button
                    Button(action: {
                        //TODO: add action
                    }) {
                        
                        VStack{
                            Image(systemName: "text.redaction") // chart bar
                                .foregroundColor(.white)
                                .frame(width:40, height: 40)
                                .background(ColorSets.secondaryColor)
                                .cornerRadius(200)
                                .padding(.horizontal, 1)
                            
                            Text("Data")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding()
                        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    }.accessibilityLabel("Data")
                    .padding(-10)
                    
                    //More button
                    Button(action: {
                        //TODO: add action
                    }) {
                        
                        VStack{
                            Image(systemName: "ellipsis") // chart bar
                                .foregroundColor(.white)
                                .frame(width:40, height: 40)
                                .background(ColorSets.secondaryColor)
                                .cornerRadius(200)
                                .padding(.horizontal, 1)
                            
                            Text("More")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding()
                        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    }.accessibilityLabel("More")
                    .padding(-10)
                    
                    
                    
                    
                }.padding(.top, 60)
                
            }
            .padding(20)
            
        }.frame(height: 400)
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    MainHeader()
}
