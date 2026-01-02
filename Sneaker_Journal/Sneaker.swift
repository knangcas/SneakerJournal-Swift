//
//  Sneaker.swift
//  Sneaker_Journal
//
//  Created by Kevin Nangcas on 12/27/25.
//

import Foundation
import SwiftData

@Model
class Sneaker : Identifiable{
    var id : Int
    var brand : String
    var model : String
    var size: Double
    var nickname : String?
    var primaryColor : String?
    var year : Int?
    var yearPurchased : Int?
    var purchaseAmount : Double?
    var image : String?
    var wearCount : Int
    var lastWorn : Date?
    
    
    init(brand:String,model:String,size:Double) {
        id = UUID().hashValue
        self.brand = brand
        self.model = model
        self.size = size
        self.wearCount = 0
    }
    
//    var fullName : String {
//        brand + " " + model + " " + nickname + " (" + String(year) + ")"
//    }
}
