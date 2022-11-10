//
//  Data.swift
//  RecipeGroupAA
//
//  Created by Amelie Pocchiolo on 04/11/2022.
//

import Foundation

// MARK: - difficulty
enum Difficulty: String {
    case easy = "facile"
    case hard = "difficil"
    case medium = "moyen"
}

// MARK: - category
enum Category: String {
    case entree = "entrée"
    case dish = "plat"
    case dessert = "dessert"
}

// MARK: - season
enum Season: String {
    case fall = "automne"
    case summer = "été"
    case winter = "hiver"
    case spring = "printemps"
}

// MARK: - RecipeIngredient
struct RecipeIngredient: Codable, Hashable {
    var recipeIngredientID: Int
    var quantity: Int
    var unity: String
    var recipeID: Int
    var ingredientID: Int
    var createdAt: String
    var updatedAt: String
}

// MARK: - RecipeMateriel
struct RecipeMateriel: Codable, Hashable {
    var recipeMaterielID: Int
    var recipeID: Int
    var quantity: Int
    var materielID: Int
    var createdAt: String
    var updatedAt: String
}

// MARK: - Recipe
struct Recipe: Codable {
    var id: Int
    var title: String
    var time: String
    var difficulty: String
    var category: String
    var season, image: String
    var price: Int
    var createdAt: String
    var updatedAt: String
    var userID: Int
    var users: [User]
    var recipeIngredients: [RecipeIngredient]
    var recipeMateriels: [RecipeMateriel]
    var steps: [Step]
}

// MARK: - Materiel
struct Materiel: Codable {
    var id: Int
    var name: String
    var createdAt: String
    var updatedAt: String
}
// MARK: - Ingredient
struct Ingredient: Codable {
    var id: Int
    var name: String
    var createdAt: String
    var updatedAt: String
}


// MARK: - Step
struct Step: Codable, Hashable {
    var id: Int
    var etape: String
    var stepDescription: String
    var createdAt: String
    var updatedAt: String
    var recipeID: Int
}
// MARK: - User
struct User: Codable, Identifiable {
    var id: Int
    var firstName: String
    var lastName: String
    var imageName: String
    var email: String
    var password: String
//    var createdAt: String
//    var updatedAt: String
}


// MARK: - FavoriteElement
struct Favorite: Codable {
    var createdAt: String
    var updatedAt: String
    var userID: Int
    var recipeID: Int
}
