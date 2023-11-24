//
//  CardRow.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 22/11/23.
//

import SwiftUI

struct CardRow: View {
    @State var cardName : String = "Disposable"
    @State var color : Color = Color(.pink)
    @State var lastNumbers : String = "*1234"
    @State var expirationDate : String = "10/28"

    var body: some View {
        HStack{
            ZStack(alignment: .trailing){
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(color)
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
                Text(cardName)
                    .fontWeight(.bold)
                Text(lastNumbers + "· Expires on " + expirationDate)
            }.padding(5)
        }.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CardRow()
}
