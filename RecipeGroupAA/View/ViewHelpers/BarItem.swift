//
//  BarItem.swift
//  RecipeGroupAA
//
//  Created by Esteban SEMELLIER on 09/11/2022.
//

import SwiftUI

struct BarItem: View {
    var text: String
    var sfsymbol: String
    var lineBool: Bool
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: 70, height: 70)
                .foregroundColor(.white)
                .overlay(
                    VStack{
                        Image(systemName: sfsymbol)
                            .foregroundColor(.black)
                            .padding(.bottom)
                        Text(text)
                    }
                )
                .padding()
            
            if lineBool == true {
                Rectangle()
                    .frame(width: 1, height: 70)
                    .foregroundColor(.green)
            }
        }
    }
}


struct BarInfo: View {
    @State var recipes: Recipe
    var body: some View {
        HStack{
            Spacer()
            BarItem(text: recipes.time , sfsymbol: "timer", lineBool: true)
            Spacer()
            BarItem(text: recipes.difficulty, sfsymbol: "arrow.up.forward", lineBool: true)
            Spacer()
            BarItem(text: String(recipes.price), sfsymbol: "dollarsign.circle", lineBool: false)
            Spacer()
        }
    }
}

struct preparation: View {
    var body: some View {
        VStack{
            GreenLign()
            Text("Préparation")
                .font(.title2)
                .multilineTextAlignment(.leading)
           GreenLign()
        }
    }
}

