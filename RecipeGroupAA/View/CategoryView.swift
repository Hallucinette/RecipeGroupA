//
//  ContentView.swift
//  RecipeGroupAA
//
//  Created by Amelie Pocchiolo on 04/11/2022.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        
        HStack{
            ForEach(categories) { category in
                VStack{
                    
                    Image(category.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 110, height: 100)
                        .cornerRadius(10)
                        .clipped()
                    Text(category.category)
                        .foregroundColor(.greenDark)
                }
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
