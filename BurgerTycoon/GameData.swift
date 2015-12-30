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
let GAMEDATA_KEYCHAIN_BURGER_STOCK_KEY = "burger_stock"
let GAMEDATA_KEYCHAIN_FRIES_STOCK_KEY = "fries_stock"
let GAMEDATA_KEYCHAIN_DRINK_STOCK_KEY = "drink_stock"
let GAMEDATA_KEYCHAIN_SUNDAE_STOCK_KEY = "sundae_stock"

let keychain = Keychain(service: NSBundle.mainBundle().bundleIdentifier!)

class GameData {
    
    var defaultProducts: [NSObject: AnyObject] {
        get {
            let dict = NSBundle.mainBundle().pathForResource("Products", ofType: "plist")
            return NSDictionary(contentsOfFile: dict!) as! [NSObject: AnyObject]
        }
    }
    
    var defaultBurgers: [AnyObject] {
        get {
            return defaultProducts["Burger"] as! [AnyObject]
        }
    }
    
    var defaultFries: [AnyObject] {
        get {
            return defaultProducts["Fries"] as! [AnyObject]
        }
    }
    
    var defaultDrinks: [AnyObject] {
        get {
            return defaultProducts["Drinks"] as! [AnyObject]
        }
    }
    
    var defaultSundaes: [AnyObject] {
        get {
            return defaultProducts["Sundae"] as! [AnyObject]
        }
    }
    
    var money: Int {
        didSet {
            keychain[GAMEDATA_KEYCHAIN_MONEY_KEY] = String(self.money)
        }
    }
    
    var burgerStock: Int {
        didSet {
            keychain[GAMEDATA_KEYCHAIN_BURGER_STOCK_KEY] = String(self.burgerStock)
        }
    }
    
    var friesStock: Int {
        didSet {
            keychain[GAMEDATA_KEYCHAIN_FRIES_STOCK_KEY] = String(self.friesStock)
        }
    }
    
    var drinkStock: Int {
        didSet {
            keychain[GAMEDATA_KEYCHAIN_DRINK_STOCK_KEY] = String(self.drinkStock)
        }
    }
    
    var sundaeStock: Int {
        didSet {
            keychain[GAMEDATA_KEYCHAIN_SUNDAE_STOCK_KEY] = String(self.sundaeStock)
        }
    }
    
    
    var sharedData: GameData {
        get {
            return GameData()
        }
    }
    
    private init() {
        self.money = keychain[GAMEDATA_KEYCHAIN_MONEY_KEY] != nil ? Int(keychain[GAMEDATA_KEYCHAIN_MONEY_KEY]!)! : 0
        self.burgerStock = keychain[GAMEDATA_KEYCHAIN_BURGER_STOCK_KEY] != nil ? Int(keychain[GAMEDATA_KEYCHAIN_BURGER_STOCK_KEY]!)! : 0
        self.friesStock = keychain[GAMEDATA_KEYCHAIN_FRIES_STOCK_KEY] != nil ? Int(keychain[GAMEDATA_KEYCHAIN_FRIES_STOCK_KEY]!)! : 0
        self.drinkStock = keychain[GAMEDATA_KEYCHAIN_DRINK_STOCK_KEY] != nil ? Int(keychain[GAMEDATA_KEYCHAIN_DRINK_STOCK_KEY]!)! : 0
        self.sundaeStock = keychain[GAMEDATA_KEYCHAIN_SUNDAE_STOCK_KEY] != nil ? Int(keychain[GAMEDATA_KEYCHAIN_SUNDAE_STOCK_KEY]!)! : 0
    }
}
