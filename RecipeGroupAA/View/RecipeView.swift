//
//  HomeView.swift
//  RecipeGroupAA
//
//  Created by Thibault GODEFROY on 07/11/2022.
//

import SwiftUI

struct RecipeView: View {
    var grid = [GridItem](repeating: .init(.flexible()), count: 2)
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                HStack{
                    Text("Recettes")
                        .font(.system(size: 36, weight: .semibold))
                    
                    Spacer()
                    
                    Button {
                        print("Image tapped!")
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .font(.system(size: 25))
                            .foregroundColor(.greenDark)
                    }
                } .padding()
            }
            
        
        LazyVGrid(columns: grid) {
            ForEach(recipes) { recipe in
                ZStack{
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 160, height: 150)
                        .cornerRadius(10)
                        .clipped()
                        .overlay(
                            
                            VStack{
                                HStack{
                                    
                                    Button {
                                        print("Image tapped!")
                                    } label: {
                                        ZStack{
                                            Circle()
                                                .fill(.white)
                                                .frame(width: 100, height: 50)
                                            Image(systemName: "heart")
                                                .foregroundColor(.greenDark)
                                        }
                                    }
                                } .offset(x: 50, y: 40)
                                
                            }
                        )
                } 
            } 
        } .padding()
   
        }
    }
}


struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
