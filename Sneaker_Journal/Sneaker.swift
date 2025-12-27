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
    var nickname : String
    var primaryColor : String
    var year : Int
    var yearPurchased : Int
    var purchaseAmount : Double
    var image : String
    var wearCount : Int
    var lastWorn : Date
    var size: Double
    
    init(brand:String,model:String,size:Double) {
        id = UUID().hashValue
        self.brand = brand
        self.model = model
        self.size = size
        self.nickname = ""
        self.primaryColor = ""
        self.year = 0
        self.yearPurchased = 0
        self.purchaseAmount = 0
        self.image = ""
        self.wearCount = 0
        self.lastWorn = Date()
    }
    
    var fullName : String {
        brand + " " + model + " " + nickname + " (" + String(year) + ")"
    }
}
