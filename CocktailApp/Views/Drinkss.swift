//
//  Drinkss.swift
//  CocktailApp
//
//  Created by MacBook Pro on 02/06/22.
//

import Foundation
import SwiftUI

struct Drinkss: Hashable, Codable, Identifiable {
    var idDrink: Int
    var strDrink: String
    var strInstructions: String
    var strIngredient1: String
    
    private var strDrinkThumb: String
    var DrinkImage: Image {
        Image(strDrinkThumb)
    }
    
}
