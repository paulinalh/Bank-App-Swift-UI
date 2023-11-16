//
//  TransactionRow.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 16/11/23.
//

import SwiftUI
import Foundation

struct TransactionRow: View {
    
    @State var title : String
    @State var date = Date()
    @State var amount : Double?
    
    var body: some View {
        
        HStack{
            
            
            Image(systemName: "basket.fill") // chart bar
                .foregroundColor(.white)
                .frame(width:40, height: 40)
                .background(ColorSets.TransactionIcon)
                .cornerRadius(200)
                .padding(.horizontal, 1)
            
            VStack(alignment: .leading){
                Text(self.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                
                Text(dateFormatter.string(from: date))
                    .font(.caption)
                    .foregroundColor(ColorSets.tertiaryColor)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            if let formattedValue = numberFormatter.string(for: amount) {
                Text("-€ "+formattedValue)
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            
            
        } .preferredColorScheme(.dark)
        
        
        
    }
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }()
    
    private let numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter
    }()
}

#Preview {
    TransactionRow(title : "Napoli minimarket", date : Date(), amount : 16.4)
}
