//
//  ContentViewRetry.swift
//  CocktailApp
//
//  Created by MacBook Pro on 28/05/22.
//

import SwiftUI

struct URLImage: View{
    let urlString: String
    
    @State var data: Data?
    
    var body: some View{
        if let data = data, let uiimage = UIImage(data: data){
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
                .background(Color.gray)
        }else{
            Image(systemName: "image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 70)
                .background(Color.gray)
                .onAppear{
                    fetchData()
                }
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}

struct ContentViewRetry: View {
    @StateObject var viewModel = ViewModelDrink
    
    var body: some View {
        CocktailRow()
    }
}

struct ContentViewRetry_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewRetry()
    }
}
