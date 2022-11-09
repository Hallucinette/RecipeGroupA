//
//  RecipeView.swift
//  frontperso
//
//  Created by Amelie Pocchiolo on 07/11/2022.
//

import SwiftUI

struct RecipeDetailView: View {
       @State var recipes: Recipe
    //@EnvironmentObject var recipes: RecipeViewModel
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ImageRecipe(recipes: recipes)
                    .padding()
                BarInfo(recipes: recipes)
//                pickerView(recipes: recipes, ingredients: [Ingredient])
                    .padding()
                preparation()
                    .padding()
                
                // forEach step ....
                StepView()
                StepView()
                StepView()
                
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
        RecipeDetailView(recipes: .preview)
    }
}



struct pickerView: View {
    @State private var selected = 0
    @State var recipes: Recipe
    var ingredients: [Ingredient]
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
//                    ForEach(recipes.recipeIngredients, id: \.self) { ingred in
//                        if RecipeIngredient.ingredientID == Ingredient.id {
//                            Text(Ingredient.name)
//                        }
                    ForEach(recipes.recipeIngredients, id: \.self) { ingred in
                        var id = ingred.ingredientID
//                        if id == ingredients.filter(ingredients.id){
//                           // Text(ingredients.name)
//                        }
//                        recupérer les id des ingredients de la recette
//                        for each ingredients et if ingredient.id match avec recipes.recipeIngredients.ingredientID alors affiche le nom de l'ingredient
                    }
                    
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


struct StepView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Etape1")
                .padding()
            HStack{
                Text("Ajouter la carotte et la branche de céleri hachée puis la viande et faire revenir le tout.")
                    .padding()
            }
            GreenLign()
                .padding()
        }
    }
}
