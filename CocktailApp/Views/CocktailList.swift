//
//  CocktailList.swift
//  CocktailApp
//
//  Created by MacBook Pro on 02/06/22.
//

import SwiftUI

struct CocktailList: View {
    @StateObject var viewModeldrink = ViewModelDrink()
    @State var searchText = ""
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModeldrink.filteredDrink, id:\.self){ Drink in
                    NavigationLink(destination: CocktailDetail(drink: Drink)) {
                        CocktailRow(drink: Drink)
                    }
                }
            }
            .navigationTitle("Drink List")
            .searchable(text: $searchText, prompt: "Find a drink")
            .onChange(of: searchText) { data in
                viewModeldrink.search(with: data)
            }
            .onAppear(){
                viewModeldrink.search()
                viewModeldrink.fetch()
            }
        }
    }
}

struct DrinkList_Previews: PreviewProvider {
    static var previews: some View {
        CocktailList()
    }
}
