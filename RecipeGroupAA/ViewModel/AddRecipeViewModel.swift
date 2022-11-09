//
//  AddRecipeViewModel.swift
//  RecipeGroupAA
//
//  Created by Esteban SEMELLIER on 07/11/2022.
//

import Foundation

class AddRecipeViewModel: ObservableObject {
    
    @Published var recipe = Recipe(id: 1, title: "Raclette", time: "120", difficulty: "facile", category: "plat", season: "hiver", image: "image", price: 25, createdAt: "", updatedAt: "", userID: 1, users: [User(id: 1, firstName: "esteban", lastName: "semellier", imageName: "", email: "esteban.semellier@gmail.com", password: "password")], recipeIngredients: [], recipeMateriels: [], steps: [Step(id: 1, etape: "1", stepDescription: "faire fondre le fromage", createdAt: "", updatedAt: "", recipeID: 1), Step(id: 2, etape: "2", stepDescription: "manger", createdAt: "", updatedAt: "", recipeID: 1)])
    
    var endPoint = "https://recipe-app-group-a.herokuapp.com"
    
    // - MARK: Fonction READ
    func getIngredientFromApi() async throws -> (Recipe) {
        guard let url = URL(string: "\(endPoint)/recipes/ingredient")
        else {
            fatalError("Missing URL")
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else {
            fatalError("Error while fetching data")
        }
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let recipe = try decoder.decode(Recipe.self, from: data)
        
        print("succes: \(recipe)")
        return recipe
        
    }
    
    // - MARK: Fonction READ
    func getRecipeFromApi() async throws -> (Recipe) {
        guard let url = URL(string: "\(endPoint)/recipes")
        else {
            fatalError("Missing URL")
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else {
            fatalError("Error while fetching data")
        }
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let recipe = try decoder.decode(Recipe.self, from: data)
        
        print("succes: \(recipe)")
        return recipe
        
    }
    
    // - MARK: Fonction POST
    func addRecipeToApi(_ : Recipe) async throws -> (Recipe) {
        guard let url = URL(string: "\(endPoint)/recipe")
        else {
            fatalError("Missing URL")
        }
        
        let body: [String: String] = [
            "title": recipe.title,
            "time": recipe.time,
            "difficulty": recipe.difficulty,
            "category": recipe.category,
            "season": recipe.season,
            "image": recipe.image,
            "price": String(recipe.price),
            "userID": String(recipe.userID)
         ]
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONEncoder().encode(body)
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let decodedRecipe = try decoder.decode(Recipe.self, from: data)
        
        print("succes: \(decodedRecipe)")
        return decodedRecipe
        
    }

    
}

