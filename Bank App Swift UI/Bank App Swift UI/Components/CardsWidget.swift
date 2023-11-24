//
//  CardsWidget.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 23/11/23.
//

import SwiftUI

struct CardsWidget: View {
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.white)
                .shadow(radius: 0)
                .frame(width: .infinity, height: 200)
                .opacity(0.2)
            
            VStack(alignment: .leading){
                Text("Cards >")
                    .font(.title3)
                    .foregroundColor(ColorSets.tertiaryColor)
                    .fontWeight(.bold)
                
                
                HStack(alignment: .top, spacing: 25){
                    
                    //First card
                    VStack{
                        ZStack(alignment: .trailing){
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.green)
                                .shadow(radius: 0)
                                .frame(width: 60, height: 40)
                                
                            
                            VStack(spacing: 10 ){
                                Image(systemName: "parkingsign")
                                    .fontWeight(.bold).font(.caption2)
                                
                                Image(systemName: "textformat.123")
                                    .fontWeight(.bold).font(.caption2)
                            }.padding(5)
                        }.padding(5)
                        
                        
                        VStack(alignment: .leading){
                            Text("Virtual")
                                .fontWeight(.bold)
                            Text("*1234")
                        }.padding(5)
                    }
                    
                    //Second card
                    VStack{
                        ZStack(alignment: .trailing){
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.pink)
                                .shadow(radius: 0)
                                .frame(width: 60, height: 40)
                                
                            
                            VStack(spacing: 10 ){
                                Image(systemName: "parkingsign")
                                    .fontWeight(.bold).font(.caption2)
                                
                                Image(systemName: "textformat.123")
                                    .fontWeight(.bold).font(.caption2)
                            }.padding(5)
                        }.padding(5)
                        
                        
                        VStack(alignment: .leading){
                            Text("Disposable")
                                .fontWeight(.bold)
                            Text("*1234")
                        }.padding(5)
                    }
                    
                    VStack{
                        ZStack(alignment: .center){
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.accentColor)
                                .shadow(radius: 0)
                                .frame(width: 60, height: 40)
                                .opacity(0.3)
                                
                            
                            Image(systemName: "plus")
                                .fontWeight(.bold).font(.title3)
                                .foregroundColor(.accentColor)
                            
                            
                        }.padding(5)
                        
                        
                        VStack(alignment: .leading){
                            Text("Get card")
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            
                        }.padding(5)
                    }
                }
                
            }
        }.padding(20)
            .preferredColorScheme(.dark)
        
        
       
    }
}

#Preview {
    CardsWidget()
}
