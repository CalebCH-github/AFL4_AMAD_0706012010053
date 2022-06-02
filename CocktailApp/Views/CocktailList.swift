//
//  CocktailList.swift
//  CocktailApp
//
//  Created by MacBook Pro on 02/06/22.
//

import SwiftUI

struct CocktailList: View {
    var body: some View {
        NavigationView{
        List(drinks) { drinks in
            NavigationLink {
                CocktailDetail()
            } label: {
                CocktailRow(drink: drinks)
            }
        .navigationTitle("Cocktails")
        }
    }
}

struct CocktailList_Previews: PreviewProvider {
    static var previews: some View {
        CocktailList()
    }
}
