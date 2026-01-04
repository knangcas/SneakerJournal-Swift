//
//  SneakerListView.swift
//  Sneaker_Journal
//
//  Created by Kevin Nangcas on 1/1/26.
//

import SwiftUI


struct SneakerListView: View {
    
    var sneaker: Sneaker
    private var yearUnwrapped : String {
        guard let year : Int = sneaker.year else { return "" }
        return String(year)
    }
    
    var body: some View {
        VStack (alignment:.leading){
            
            
            
            Text("\(yearUnwrapped) \(sneaker.brand) \(sneaker.model)")
                .font(.title3)
            sneaker.nickname == nil ? Text("Worn \(sneaker.wearCount) times")
                .font(.caption): Text("\"\(sneaker.nickname!)\" Worn \(sneaker.wearCount) times")
                .font(.caption)
        }.padding()
    }
}
