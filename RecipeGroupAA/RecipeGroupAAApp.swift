//
//  RecipeGroupAAApp.swift
//  RecipeGroupAA
//
//  Created by Amelie Pocchiolo on 04/11/2022.
//

import SwiftUI

@main
struct RecipeGroupAAApp: App {
    @StateObject var addrecipeVM = AddRecipeViewModel()
    var body: some Scene {
        WindowGroup {
            AddRecipeView()
                .environmentObject(addrecipeVM)
        }
    }
}
