import SwiftUI

class HomeViewModel : ObservableObject {
    
    @Published var recipe: Recipe?
    
    @Published var recipies = [Recipe(id: 1, title: "", time: "", difficulty: "", category: "", season: "", image: "", price: 0, createdAt: "", updatedAt: "", userID: 1, users: [User(id: 1, firstName: "", lastName: "", imageName: "", email: "", password: "")], recipeIngredients: [RecipeIngredient(recipeIngredientID: 1, quantity: 1, unity: "", recipeID: 1, ingredientID: 1, createdAt: "", updatedAt: "")], recipeMateriels: [RecipeMateriel(recipeMateriel: 1, recipeID: 1, materielID: 1, createdAt: "", updatedAt: "")], steps: [Step(id: 1, etape: "", stepDescription: "", createdAt: "", updatedAt: "", recipeID: 1)])]
   
    var endPoint = "https://recipe-app-group-a.herokuapp.com"
    
    
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
    
}
