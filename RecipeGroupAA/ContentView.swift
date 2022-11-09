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
//            FavoriView()
//                .tabItem{
//                    Label("Favoris", systemImage: "heart")
//                }
//
//            UserView()
//                .tabItem{
//                    Label("Profile", systemImage: "person.fill")
//
//                } A RAJOUTER A L'ASSEMBLAGE DES FICHIERS
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
