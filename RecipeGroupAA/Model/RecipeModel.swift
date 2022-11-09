//
//  RecipeModel.swift
//  RecipeGroupAA
//
//  Created by Thibault GODEFROY on 07/11/2022.
//

import SwiftUI

struct RecipeModel : Identifiable {
    var id = UUID()
    let image : String
}

var recipes : [RecipeModel] = [
    RecipeModel(image: "plat1"),
    RecipeModel(image: "plat2"),
    RecipeModel(image: "plat3"),
    RecipeModel(image: "plat4"),
    RecipeModel(image: "plat5"),
    RecipeModel(image: "plat6")
]
