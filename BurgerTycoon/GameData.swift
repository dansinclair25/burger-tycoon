//
//  GameData.swift
//  BurgerTycoon
//
//  Created by Dan Sinclair on 29/12/2015.
//  Copyright © 2015 Dan Sinclair. All rights reserved.
//

import Foundation
import KeychainAccess

let GAMEDATA_KEYCHAIN_MONEY_KEY = "money"

let keychain = Keychain(service: NSBundle.mainBundle().bundleIdentifier!)

public class GameData {
    
    let defaultProducts = [
        // Burgers
        Product(name: "Burger", purchaseCost: 1, salePrice: 2, stock: 0),
        Product(name: "Burger", purchaseCost: 2, salePrice: 3, stock: 0),
        Product(name: "Burger", purchaseCost: 4, salePrice: 6, stock: 0),
        
        // Fries
        Product(name: "Fries", purchaseCost: 1, salePrice: 2, stock: 0),
        Product(name: "Fries", purchaseCost: 2, salePrice: 3, stock: 0),
        Product(name: "Fries", purchaseCost: 4, salePrice: 5, stock: 0),
        
        // Drink
        Product(name: "Drink", purchaseCost: 1, salePrice: 2, stock: 0),
        Product(name: "Drink", purchaseCost: 2, salePrice: 3, stock: 0),
        Product(name: "Drink", purchaseCost: 4, salePrice: 5, stock: 0),
    ]
    
    public var money: Int
    
    var sharedData: GameData {
        get {
            return GameData()
        }
    }
    
    private init() {
        self.money = keychain[GAMEDATA_KEYCHAIN_MONEY_KEY] != nil ? Int(keychain[GAMEDATA_KEYCHAIN_MONEY_KEY]!)! : 0
    }
}
