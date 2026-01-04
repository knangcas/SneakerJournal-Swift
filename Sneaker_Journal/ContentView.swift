//
//  ContentView.swift
//  Sneaker_Journal
//
//  Created by Kevin Nangcas on 12/27/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @Query private var SneakerList : [Sneaker]
    
    

    var body: some View {
        NavigationStack {
            List {
                ForEach(SneakerList) { item in
                    NavigationLink {
                        Text(item.brand)
                    } label: {
                        SneakerListView(sneaker:item)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem (placement:.navigationBarLeading) {
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    NavigationLink {
                        NewSneakerView()
                    } label: {
                            Label("Add Item", systemImage: "plus")
                        
                    }
                }
            }.navigationTitle("Sneaker List")
        }
    }
    
    

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(SneakerList[index])
            }
        }
    }
}



#Preview {
    ContentView()
        .modelContainer(for: Sneaker.self, inMemory: true)
}
