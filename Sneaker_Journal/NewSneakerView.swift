//
//  NewSneakerView.swift
//  Sneaker_Journal
//
//  Created by Kevin Nangcas on 12/27/25.
//

import SwiftUI

struct NewSneakerView : View {
    @Environment(\.modelContext) private var context
    
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
                TextField("Brand", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //textfield for model
                TextField("Model", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //picker for size
                TextField("Size", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                
                
                //"nickname"
                //Text Field
                TextField("Colorway", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //Picker for year?
                TextField("Year", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //Picker for year purchased
                TextField("Year Purchased", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                //number decimal keyboard for purhase price
                //Picker for year?
                TextField("Purchase Price", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                    .keyboardType(.decimalPad)
                
                //Picker for color?
                TextField("Primary Color", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical,5)
                
                
                
            }.padding(.leading,10)
            
        }
        
    }
    
    
    
}
#Preview {
    NewSneakerView()
}
