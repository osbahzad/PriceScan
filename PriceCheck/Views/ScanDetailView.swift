//
//  ScanDetailView.swift
//  PriceCheck
//
//  Created by Omar Bahzad on 9/26/24.
//

import SwiftUI

struct ScanDetailView: View {
    var scan: PriceScan
    var body: some View {
        
        NavigationView {
            VStack{
                Text(scan.item)
                    .bold()
                    .font(.title)
                
                Text("As of: \(Helper.getShortDate(scan.date))")
                    .foregroundColor(.gray)
                
                
                Text(Helper.asCurrency(Double(scan.price)))
                    .font(.system(size: 30)) // some help from AI
                
                Spacer()
            }
        }
    }
}

#Preview {
    ScanDetailView(scan: PriceScan(price: 19.99, item: "Sample Item", date: "2020-10-09T16:58:00")) // Help with AI
}
