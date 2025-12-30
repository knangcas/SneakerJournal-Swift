//
//  NewSneakerView.swift
//  Sneaker_Journal
//
//  Created by Kevin Nangcas on 12/27/25.
//

import SwiftUI
import SwiftData

struct NewSneakerView : View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @State var brand = ""
    @State var model = ""
    @State var size : String = ""
    @State var nickname : String = ""
    @State var year : String = ""
    @State var yearPurchased : String = ""
    @State var purchasePrice : String = ""
    @State var primaryColor : String = ""
    
    var body: some View {
        ScrollView {
            HStack {
                Text("Add Sneaker")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading,10)
                Spacer()
            }
            
            VStack {
                
                //currently just placeholders
                //will be replaced by elements in comments
                
                //picker for brand
                TextField("Brand", text: $brand)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //textfield for model
                TextField("Model", text: $model)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //picker for size
                TextField("Size", text: $size)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                
                
                //"nickname"
                //Text Field
                TextField("Colorway", text: $nickname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //Picker for year?
                TextField("Year", text: $year)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //Picker for year purchased
                TextField("Year Purchased", text: $yearPurchased)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //number decimal keyboard for purhase price
                //Picker for year?
                TextField("Purchase Price", text: $purchasePrice)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                    .keyboardType(.decimalPad)
                
                //Picker for color?
                TextField("Primary Color", text: $primaryColor)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                    
                
                
                
            }.padding(.leading,10)
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                        .font(.title3)
                }
                Spacer()
                Button {
                 addSneaker()
                } label: {
                    Text("Add")
                        .font(.title3)
                }
            }.padding(.leading, 40)
                .padding(.trailing, 40)
        }
        
    }
    
    func addSneaker() {
        
        let newSneaker = Sneaker(
            brand:brand,
            model:model,
            size:Double(size) ?? 0)
        newSneaker.year = Int(year) ?? 0
        newSneaker.yearPurchased = Int(yearPurchased) ?? 0
        newSneaker.wearCount = 0
        newSneaker.nickname = nickname
        newSneaker.primaryColor = primaryColor
        newSneaker.purchaseAmount = Double(purchasePrice) ?? 0

        context.insert(newSneaker)
        try? context.save()
        dismiss()
    }
    
}

#Preview {
    NewSneakerView()
}
