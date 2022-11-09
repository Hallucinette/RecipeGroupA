//
//  CategoryButton.swift
//  RecipeGroupAA
//
//  Created by Esteban SEMELLIER on 07/11/2022.
//

import SwiftUI

struct CategoryButton: View {
    @State var entreeButtonIsActive: Bool = false
    @State var dishButtonIsActive: Bool = false
    @State var dessertButtonIsActive: Bool = false
    @State var recipe: Recipe?
    var body: some View {
        Text("Catégorie")
        // Bouton catégorie
        HStack {
            Button {
                // Action Easy
                entreeButtonIsActive = true
                dishButtonIsActive = false
                dessertButtonIsActive = false
                recipe?.category = "entree"
            } label: {
                Text("Entée")
                    .foregroundColor(entreeButtonIsActive ? .white : .black)
                    .padding(5)
                    .background {
                        entreeButtonIsActive ? Color.green : Color.gray
                    }.cornerRadius(15)
            }
            Button {
                // Action Medium
                entreeButtonIsActive = false
                dishButtonIsActive = true
                dessertButtonIsActive = false
                recipe?.category = "plat"
            } label: {
                Text("Plat")
                    .foregroundColor(dishButtonIsActive ? .white : .black)
                    .padding(5)
                    .background {
                        dishButtonIsActive ? Color.green : Color.gray
                    }.cornerRadius(15)
            }.padding(10)
            Button {
                // Action Easy
                entreeButtonIsActive = false
                dishButtonIsActive = false
                dessertButtonIsActive = true
                recipe?.category = "dessert"
            } label: {
                Text("Dessert")
                    .foregroundColor(dessertButtonIsActive ? .white : .black)
                    .padding(5)
                    .background {
                        dessertButtonIsActive ? Color.green : Color.gray
                    }.cornerRadius(15)
            }
        }
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton()
    }
}
