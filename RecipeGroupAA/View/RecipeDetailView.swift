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

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ImageRecipe(recipes: recipes)
                    .padding()
                BarInfo(recipes: recipes)
                pickerView(recipes: recipes, ingredients: ingredients)
                //, ingredients: ingredients)
                    .padding()
                preparation()
                    .padding()

                StepView(recipes: recipes)
                
                Text("Bon appetit !")
                    .foregroundColor(.green)
                    .font(.title)
                    .padding(.vertical)
                
                ButtonShare()
                    .padding()
                Spacer()
            }
            .padding()
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipes: .preview, ingredients: .ingre)
    }
}



struct pickerView: View {
    @State private var selected = 0
    @State var recipes: Recipe
    var ingredients: Ingredient
    var body: some View {
        VStack{
            Picker("Choose", selection: $selected) {
                Text("Ingredients")
                    .tag(0)
                Text("Ustensile")
                    .tag(1)
            }
            .pickerStyle(.segmented)
            if selected == 0 {
                VStack(alignment: .leading){
//                    ForEach(recipes.recipeIngredients, id: \.self) {
//                        ingred in
//                        var idIngreRec = ingred.recipeIngredientID
//                            Text(String(idIngreRec))
//                        ForEach(ingredients.id) { valu in
//                            if valu == idIngreRec {
//                                Text(valu.name)
//                            }
//
//                        }
//                    }
//                    ForEach(ingredients.id) { valu in
//                        if valu == idIngreRec {
//                            Text(valu.name)
//                        }
//
//                    }
                    
//  recupérer les id des ingredients de la recette
//  for each ingredients et if ingredient.id match avec recipes.recipeIngredients.ingredientID alors affiche le nom de l'ingredient
                    
                    Text("sel")
                        .multilineTextAlignment(.leading)
                }
                .padding(.vertical)
            } else {
                Text("poele")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical)
            }
        }
        .padding(.vertical)
    }
}

func addOne(num: Int) -> Int {
    var num = num
    num += 1
 //   print(num)
    return num
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
