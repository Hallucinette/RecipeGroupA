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
    @StateObject var homeVM = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(addrecipeVM)
                .environmentObject(homeVM)
        }
    }
}
