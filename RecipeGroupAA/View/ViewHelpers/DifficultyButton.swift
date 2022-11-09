//
//  DifficultyButton.swift
//  RecipeGroupAA
//
//  Created by Esteban SEMELLIER on 07/11/2022.
//

import SwiftUI

struct DifficultyButton: View {
    @State var easyButtonIsActive: Bool = false
    @State var mediumButtonIsActive: Bool = false
    @State var hardButtonIsActive: Bool = false
    @State var recipe: Recipe?
    
    var body: some View {
        Text("Difficulté")
        // Boutton difficulté
        HStack {
            Button {
                // Action Easy
                easyButtonIsActive = true
                mediumButtonIsActive = false
                hardButtonIsActive = false
                recipe?.difficulty = "facile"
            } label: {
                Text("Facile")
                    .foregroundColor(easyButtonIsActive ? .white : .black)
                    .padding(5)
                    .background {
                        easyButtonIsActive ? Color.green : Color.gray
                    }.cornerRadius(15)
            }
            Button {
                // Action Medium
                easyButtonIsActive = false
                mediumButtonIsActive = true
                hardButtonIsActive = false
                recipe?.difficulty = "moyen"
            } label: {
                Text("Moyen")
                    .foregroundColor(mediumButtonIsActive ? .white : .black)
                    .padding(5)
                    .background {
                        mediumButtonIsActive ? Color.green : Color.gray
                    }.cornerRadius(15)
            }.padding(10)
            Button {
                // Action Easy
                easyButtonIsActive = false
                mediumButtonIsActive = false
                hardButtonIsActive = true
                recipe?.difficulty = "difficile"
            } label: {
                Text("Difficile")
                    .foregroundColor(hardButtonIsActive ? .white : .black)
                    .padding(5)
                    .background {
                        hardButtonIsActive ? Color.green : Color.gray
                    }.cornerRadius(15)
            }
        }
    }
}
