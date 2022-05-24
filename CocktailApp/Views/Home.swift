//
//  ContentView.swift
//  CocktailApp
//
//  Created by MacBook Pro on 23/05/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Recommendations")
                .font(.title)
                .bold()
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

