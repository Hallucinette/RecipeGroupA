//
//  AddStepButton.swift
//  RecipeGroupAA
//
//  Created by Esteban SEMELLIER on 07/11/2022.
//

import SwiftUI


struct AddStepButton: View {
    var body: some View {
        Divider()
        HStack {
            Text("Étape 2")
            Spacer()
            Button {
                // Ajout d'une étape
            } label: {
                Image(systemName: "plus")
            }
            
        }
        Divider()
    }
}

