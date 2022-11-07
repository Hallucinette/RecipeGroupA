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

// MARK: - Recipe
struct Recipe: Identifiable {
    var id: Int
    var price: Int
    var userID: Int
    var createdAt: String
    var updatedAt: String
    var title: String
    var time: String
    var image: String
    var difficulty: Difficulty
    var category: Category
    var season: Season
    var id_user: User
  //  var users: [JSONAny]
    
    enum CodingKeys: String, CodingKey {
        case id, title, time, difficulty, category, season, image, price, createdAt, updatedAt
        case userID = "userId"
       // case users
    }
}

// MARK: - Ingredient
struct Ingredient: Codable {
    var id: Int
    var name: String
}

// MARK: - Materiel
struct Materiel: Codable {
    var id: Int
    var name: String
}

// MARK: - User
struct User: Codable {
    var id: Int
    var firstname: String
    var lastname: String
    var email: String
    var password: String
    var createdAt, updatedAt: String
}

// MARK: - Recipe_Ingredient
struct Recipe_Ingredient: Identifiable {
    var id = UUID()
    var measure: String
    var quantity: Int
    var id_ingredient: Ingredient
    var id_recipe: Recipe
}

// MARK: - Step
struct Step: Identifiable {
    var id: Int
    var step: String
    var description: String
    var id_recipe: Recipe
}
