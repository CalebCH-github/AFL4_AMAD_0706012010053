//
//  CocktailDetail.swift
//  CocktailApp
//
//  Created by MacBook Pro on 02/06/22.
//

import SwiftUI

struct CocktailDetail: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(ViewModelDrink.drink, id: \.self) {DrinkRetry in
                    HStack{
                        URLImage(urlString: DrinkRetry.strDrinkThumb, data: nil)
                            
                        Text(DrinkRetry.strDrink)
                            .bold()
                    }.padding(3)
                    
                }
            }
            .navigationTitle("Drinks")
            .onAppear{
                ViewModelDrink.fetch()
            }
        }
    }
}

struct CocktailDetail_Previews: PreviewProvider {
    static var previews: some View {
        CocktailDetail()
    }
}
