//
//  RecipeView.swift
//  frontperso
//
//  Created by Amelie Pocchiolo on 07/11/2022.
//

import SwiftUI
import Foundation

struct RecipeDetailView: View {
    @State var recipes: Recipe
    @State var ingredients: Ingredient
    @State var materiels: Materiel

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ImageRecipe(recipes: recipes)
                BarInfo(recipes: recipes)
                pickerView(recipes: recipes, ingredients: ingredients, materiels: materiels)
                preparation()

                StepView(recipes: recipes)
                
                Text("Bon appetit !")
                    .foregroundColor(.green)
                    .font(.title)
                    .padding(.vertical)
                
                ButtonShare()
                Spacer()
            }
            .padding()
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipes: .preview, ingredients: .ingre, materiels: .mat)
    }
}



struct pickerView: View {
    @State private var selected = 0
    @State var recipes: Recipe
    var ingredients: Ingredient
    var materiels: Materiel
    var body: some View {
        VStack{
            Picker("Choose", selection: $selected) {
                Text("Ingredients")
                    .tag(0)
                Text("Ustensile")
                    .tag(1)
            }
            .pickerStyle(.segmented)
            .padding()
            if selected == 0 {
                ForEach(recipes.recipeIngredients, id: \.self) { ingre in
                    let ingre = ingre.recipeIngredientID
                    if ingre == ingredients.id {
                        Text("- " + ingredients.name)
                    }
                }
            } else {
                ForEach(recipes.recipeMateriels, id: \.self) { mat in
                    let mat = mat.recipeMaterielID
                    if mat == materiels.id {
                        Text("- " + materiels.name)
                    }
                }
            }
        }
        .padding(.vertical)
    }
}

struct StepView: View {
    @State var recipes: Recipe
    var body: some View {
        ForEach(recipes.steps, id: \.self) {
            step in
            VStack(alignment: .leading) {
                Text(step.etape + " " + String(step.id))
                    .padding()
                HStack {
                    Text(step.stepDescription)
                        .padding()
                }
                GreenLign()
                    .padding(.bottom)
            }
        }
    }
}
