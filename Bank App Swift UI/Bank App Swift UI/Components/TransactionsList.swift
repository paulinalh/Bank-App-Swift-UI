//
//  TransactionsList.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 16/11/23.
//

import SwiftUI

struct TransactionsList: View {
    var body: some View {
        
        VStack{
            ZStack(alignment: .leading){
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .frame(height: 200)
                    .opacity(0.1)
                
                VStack(alignment: .leading){
                    TransactionRow(title: "Napoli Supermarket", date: Date(), amount: 19.00)
                    TransactionRow(title: "Napoli Supermarket", date: Date(), amount: 19.00)
                    TransactionRow(title: "Napoli Supermarket", date: Date(), amount: 19.00)
                }.padding(10)
                
            }.padding()
            
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    TransactionsList()
}
