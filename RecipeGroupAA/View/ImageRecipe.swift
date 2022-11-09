//
//  ImageRecipe.swift
//  frontperso
//
//  Created by Amelie Pocchiolo on 06/11/2022.
//

import SwiftUI

struct ImageRecipe: View {
    @State var recipes: Recipe
    var body: some View {
        ZStack {
            Image(recipes.image)
                .resizable()
                .cornerRadius(10)
                .frame(width: 350, height: 300)
                .overlay(
                    VStack{
                        HStack{
                            Spacer()
                            ButtonFav()
                                .padding()
                        }
                        Spacer()
                    }
                )
        }
    }
}

struct ImageRecipe_Previews: PreviewProvider {
    static var previews: some View {
        ImageRecipe(recipes: .preview)
    }
}
