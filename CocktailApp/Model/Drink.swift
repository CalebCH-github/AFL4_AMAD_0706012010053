//
//  Drink.swift
//  CocktailApp
//
//  Created by MacBook Pro on 31/05/22.
//

import Foundation
import SwiftUI

struct DrinkClass: Hashable, Codable{
    let drinks: [DrinkRetry]
}

struct DrinkRetry: Hashable, Codable{
    let idDRink: Int
    let strDrink: String
    let strCategory: String
    let strAlcoholic: String
    let strGlass: String
    
    let strDrinkThumb: String
    var image: Image {
        Image(strDrinkThumb)
    }
}
