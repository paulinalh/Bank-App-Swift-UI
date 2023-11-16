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
            List {
                Section {
                    TransactionRow(title: "Napoli Supermarket", date: Date(), amount: 19.00)
                    TransactionRow(title: "Napoli Supermarket", date: Date(), amount: 19.00)
                    TransactionRow(title: "Napoli Supermarket", date: Date(), amount: 19.00)
                }
                
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    TransactionsList()
}
