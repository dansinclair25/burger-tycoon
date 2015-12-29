//
//  Product.swift
//  BurgerTycoon
//
//  Created by Dan Sinclair on 29/12/2015.
//  Copyright © 2015 Dan Sinclair. All rights reserved.
//

import Foundation

class Product {
    
    var name: String
    var purchaseCost: Double
    var salePrice: Double
    var stock: Int
    
    init(name: String, purchaseCost: Double, salePrice: Double, stock: Int) {
        self.name = name
        self.purchaseCost = purchaseCost
        self.salePrice = salePrice
        self.stock = stock
    }
}
