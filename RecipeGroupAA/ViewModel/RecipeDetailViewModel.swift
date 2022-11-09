//
//  ViewModel.swift
//  RecipeGroupAA
//
//  Created by Amelie Pocchiolo on 07/11/2022.
//

import Foundation


extension Recipe {
    static var preview =
    Recipe(id: 1,
           title: "Lasagne",
           time: "1h20",
           difficulty: Difficulty.easy.rawValue,
           category: Category.entree.rawValue,
           season: Season.winter.rawValue,
           image: "lasagne",
           price: 10,
           createdAt:  "10/02/2012", updatedAt:  "10/02/2012",
           userID: 1,
           users: [User(id: 1,
                        firstName: "Jane",
                        lastName: "Doe",
                        imageName: "",
                        email: "Janedoe@gmail.com",
                        password: "password"
                        )],
           recipeIngredients: [RecipeIngredient(recipeIngredientID: 1,
                                                quantity: 1,
                                                unity: "kilo",
                                                recipeID: 1,
                                                ingredientID: 1,
                                                createdAt: "10/02/2012", updatedAt: "10/02/2012")],
           recipeMateriels: [RecipeMateriel(recipeMateriel: 1,
                                            recipeID: 1,
                                            materielID: 1,
                                            createdAt: "10/12/2012", updatedAt: "10/12/2012")],
           steps: [Step(id: 1,
                        etape: "Etape",
                        stepDescription: "ceci est une description",
                        createdAt: "10/12/2012", updatedAt: "10/12/2012",
                        recipeID: 1),
                   Step(id: 2, etape: "Etape", stepDescription: "test2", createdAt: "10/12/2012", updatedAt:  "10/12/2012", recipeID: 1),
                   Step(id: 3, etape: "Etape", stepDescription: "test3", createdAt: "10/12/2012", updatedAt:  "10/12/2012", recipeID: 1)
           ])
    
}

extension Ingredient {
   static var ingre = Ingredient(id: 1, name: "Sucre", createdAt: "10/02/2012", updatedAt: "10/02/2012")
}

extension Materiel {
    static var mat = Materiel(id: 1, name: "poele", createdAt: "10/02/2012", updatedAt: "10/02/2012")
}



class RecipeDetailViewModel: ObservableObject, Identifiable {
    var recipes: [Recipe] = [
        Recipe(id: 1, title: "Lasagne", time: "1h20", difficulty: Difficulty.easy.rawValue, category: Category.entree.rawValue, season: Season.winter.rawValue, image: "lasagne", price: 10, createdAt:  "10/02/2012", updatedAt:  "10/02/2012", userID: 1, users: [User(id: 1, firstName: "Jane", lastName: "Doe", imageName: "", email: "Janedoe@gmail.com", password: "password")], recipeIngredients: [RecipeIngredient(recipeIngredientID: 1, quantity: 1, unity: "kilo", recipeID: 1, ingredientID: 1, createdAt: "10/02/2012", updatedAt: "10/02/2012")], recipeMateriels: [RecipeMateriel(recipeMateriel: 1, recipeID: 1, materielID: 1, createdAt: "10/12/2012", updatedAt: "10/12/2012")], steps: [Step(id: 1, etape: "Etape", stepDescription: "ceci est une description", createdAt: "10/12/2012", updatedAt: "10/12/2012", recipeID: 1)])
    ]
    
    var recipetest = Recipe(id: 1, title: "Lasagne", time: "1h20", difficulty: Difficulty.easy.rawValue, category: Category.entree.rawValue, season: Season.winter.rawValue, image: "lasagne", price: 10, createdAt:  "10/02/2012", updatedAt:  "10/02/2012", userID: 1, users: [User(id: 1, firstName: "Jane", lastName: "Doe", imageName: "", email: "Janedoe@gmail.com", password: "password")], recipeIngredients: [RecipeIngredient(recipeIngredientID: 1, quantity: 1, unity: "kilo", recipeID: 1, ingredientID: 1, createdAt: "10/02/2012", updatedAt: "10/02/2012")], recipeMateriels: [RecipeMateriel(recipeMateriel: 1, recipeID: 1, materielID: 1, createdAt: "10/12/2012", updatedAt: "10/12/2012")], steps: [Step(id: 1, etape: "Etape", stepDescription: "ceci est une description", createdAt: "10/12/2012", updatedAt: "10/12/2012", recipeID: 1)])
    @Published var pubishedRecipe = [Recipe]()

    init() {
        pubishedRecipe = recipes
    }
}
