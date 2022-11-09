//
//  AddRecipeView.swift
//  RecipeGroupAA
//
//  Created by Esteban SEMELLIER on 07/11/2022.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipeVM: AddRecipeViewModel
    
    @State var recipeName: String = ""
    @State var step1: String = ""
    @State var time = ""
    
//    @State var result = Recipe(id: 1, title: "Raclette", time: "120", difficulty: "facile", category: "plat", season: "hiver", image: "image", price: 25, createdAt: "", updatedAt: "", userID: 1, users: [User(id: 1, firstName: "esteban", lastName: "semellier", imageName: "", email: "esteban.semellier@gmail.com", password: "password")], recipeIngredients: [], recipeMateriels: [], steps: [Step(id: 1, etape: "1", stepDescription: "faire fondre le fromage", createdAt: "", updatedAt: "", recipeID: 1), Step(id: 2, etape: "2", stepDescription: "manger", createdAt: "", updatedAt: "", recipeID: 1)])
    
//    var stepCounter = 0
    
    var body: some View {
        ScrollView {
            PhotoTest()
            Text(recipeVM.recipe.title)
                .padding()
            TextField("Nom de la recette", text: $recipeName)
            
                .textFieldStyle(.roundedBorder)
                .shadow(color: .gray, radius: 5, x: 5, y: 3)
            
            DifficultyButton()
            
            CategoryButton()
            
//          Price()
            
            Text("Étape 1")
            TextEditor(text: $step1)
                .frame(height: 200)
                .border(.gray)
                .shadow( radius: 5, x: 10, y: 10)
                .padding(.bottom)

            AddStepButton()
            
            Button {
                //action
                //recipeVM.recipe.title = recipeName
               // recipeVM.recipe.time = recipe.time,
               // recipeVM.recipe.difficulty = recipe.difficulty,
               // recipeVM.recipe.category = recipe.category,
               // recipeVM.recipe.season = recipe.season,
               // recipeVM.recipe.image = recipe.image,
               // recipeVM.recipe.price = String(recipe.price),
               // recipeVM.recipe.userID = String(recipe.userID)
                
                Task {
                    recipeVM.recipe = try await recipeVM.addRecipeToApi(recipeVM.recipe)
                }
            } label: {
                Text("valider")
            }

        }
        
        .padding()
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(AddRecipeViewModel())
    }
}









struct PhotoTest: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 300, height: 200)
            .foregroundColor(.gray)
            .shadow(color: .black,radius: 10, x: 10, y: 7)
        
    }
}

