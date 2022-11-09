//
//  ContentView.swift
//  RecipeGroupAA
//
//  Created by Amelie Pocchiolo on 04/11/2022.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Recettes", systemImage: "list.dash")
                }
            FavoriView()
                .tabItem{
                    Label("Favoris", systemImage: "heart")
                }

            UserView(user: User(id: 1, firstName: "", lastName: "", imageName: "", email: "", password: ""))
                .tabItem{
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
