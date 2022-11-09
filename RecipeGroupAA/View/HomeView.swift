//
//  HomeView.swift
//  RecipeGroupAA
//
//  Created by Thibault GODEFROY on 07/11/2022.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    var body: some View {
        
        NavigationView {
        VStack{
            Text("")
                .searchable(text: $searchText)
            HStack{
                Spacer()
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                Spacer()
                
                Button {
                    print("Image tapped!")
                } label: {
                    Image(systemName: "plus.app")
                        .font(.system(size: 30))
                        .foregroundColor(.greenDark)
                }
                
                Spacer()
            }

            
            CategoryView()
           // RecipeView()
        }
    }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
