//
//  CocktailRow.swift
//  CocktailApp
//
//  Created by MacBook Pro on 02/06/22.
//

import SwiftUI

struct CocktailRow: View {
    var drink: Drinkss
    
    var body: some View {
        HStack{
            drink.DrinkImage
                .resizable()
            Text(drink.strDrink)
            
            Spacer()
        }
        
    }
}

struct CocktailRow_Previews: PreviewProvider {
    static var previews: some View {
        CocktailRow(drink: drinks[0])
    }
}
