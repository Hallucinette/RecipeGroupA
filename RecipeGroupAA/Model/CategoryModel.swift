//
//  CategoryModel.swift
//  RecipeGroupAA
//
//  Created by Thibault GODEFROY on 07/11/2022.
//

import SwiftUI

struct CategoryModel : Identifiable {
    var id = UUID()
    let image : String
    let category : String
}

var categories : [CategoryModel] = [
    CategoryModel(image: "entree", category: "Entrées"),
    CategoryModel(image: "plat", category: "Plats"),
    CategoryModel(image: "dessert", category: "Desserts")
]
