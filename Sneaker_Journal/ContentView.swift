//
//  ContentView.swift
//  Sneaker_Journal
//
//  Created by Kevin Nangcas on 12/27/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            Tab("List", systemImage: "list.clipboard") {
                SneakerList()
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
            }
            Tab("Journal", systemImage: "square.and.pencil") {
                Text("TODO")
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
            }
            Tab("Stats", systemImage: "chart.bar") {
                Text("TODO")
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
            }
            
        }
    }
}



#Preview {
    ContentView()
        .modelContainer(for: Sneaker.self, inMemory: true)
}
