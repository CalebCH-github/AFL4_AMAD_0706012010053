//
//  ContentViewRetry.swift
//  CocktailApp
//
//  Created by MacBook Pro on 28/05/22.
//

import SwiftUI

struct ContentViewRetry: View {
    @State private var selection: Tab = .home
//    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    @State var shouldShowOnboarding: Bool = true
    
    enum Tab {
        case home
        case drinks
        case ingredients
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                        .foregroundColor(.orange)
                }
                .tag(Tab.home)

            CocktailList()
                .tabItem {
                    Label("Drinks", systemImage: "takeoutbag.and.cup.and.straw.fill")
                        .foregroundColor(.orange)
                }
                .tag(Tab.drinks)
            
            IngredientList()
                .tabItem {
                    Label("Ingredients", systemImage: "list.bullet")
                        .foregroundColor(.orange)
                }
                .tag(Tab.ingredients)
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnBoardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })

    }
}

struct OnBoardingView: View {
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        TabView {
            PageView(
                title: "Welcome to our app",
                subtitle: "In this app, you can find out a lot of cocktails and how to make them",
                swipeleft: "Swipe Left to Continue",
                imageName: "HomeIcon",
                showDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(
                title: "Lots of cocktails",
                subtitle: "Scroll and find a lot of amazing cocktails!",
                swipeleft: "Swipe Left to Continue",
                imageName: "DrinkIcon",
                showDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(
                title: "Ingredient Details",
                subtitle: "You can also see a lot of ingredients that you might not know before",
                swipeleft: "",
                imageName: "IngredientIcon",
                showDismissButton: true,
                shouldShowOnboarding: $shouldShowOnboarding
            )
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageView: View {
    let title: String
    let subtitle: String
    let swipeleft: String
    let imageName: String
    let showDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size: 32))
                .padding()
            
            Text(subtitle)
                .font(.system(size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            Text(swipeleft)
                .font(.system(size: 18))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showDismissButton {
                Button {
                    shouldShowOnboarding.toggle()
                } label: {
                    Text("Get Started")
                        .font(.system(size: 18))
                        .frame(width: 200, height: 60)
                        .background(Color.orange)
                        .cornerRadius(15)
                }

            }
        }
    }
}

struct ContentViewRetry_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentViewRetry()
            ContentViewRetry()
        }
    }
}
