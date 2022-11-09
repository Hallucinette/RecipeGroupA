//
//  FavoriView.swift
//  RecipeGroupAA
//
//  Created by Amelie Pocchiolo on 07/11/2022.
//

import SwiftUI

struct FavoriView: View {
    var body: some View {
//        VStack {
//            List {
//                ForEach(
//            }
            ImageFav()
//        }
    }
}

struct FavoriView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriView()
    }
}

struct Titlerecipe: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 30)
                .foregroundColor(.white)
            Text("Lasagne")
        }
    }
}

struct ImageFav: View {
    var body: some View {
        VStack {
            Image("lasagne")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 250)
                .overlay(
                    VStack{
                        HStack{
                            Spacer()
                            Titlerecipe()
                            ButtonFav()
                            Spacer()
                        }
                        .padding()
                        
                        Spacer()
                    }
                )
        }
    }
}
