//
//  ContentView.swift
//  CocktailApp
//
//  Created by MacBook Pro on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack (alignment: .leading){
            
            
            Text("Recommendations")
                .font(.title)
                .bold()
                .padding()
            
            HStack {
                
                Image("margarita100px")
                    .resizable()
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .overlay {
                        TextOverlay()
                    }
                
                
            }
            
            Text("Drinks")
                .font(.title2)
                .padding()
            
            HStack (alignment: ){
                
                Image("margarita100px")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(5)
                Image("mojito100px")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(5)
                Image("negroni100px")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(5)
            }
            Spacer()
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextOverlay: View {
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text("Dry Martini")
                    .font(.title2)
                    .bold()
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}
