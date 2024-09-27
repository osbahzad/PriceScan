//
//  AppView.swift
//  PriceCheck
//
//  Created by Omar Bahzad on 9/26/24.
//

import SwiftUI

struct AppView: View {
    
    var body: some View {
        TabView {
//            ScanListView()
            ScanView()
                .tabItem {
                    Label("Scan Price", systemImage: "barcode")
                }
//            ScanView()
            ScanListView()
                .tabItem {
                    Label("Saved Scans", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    AppView()
}

