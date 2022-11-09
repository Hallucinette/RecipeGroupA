//
//  HomeView.swift
//  RecipeGroupAA
//
//  Created by Thibault GODEFROY on 07/11/2022.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    
    @EnvironmentObject var homeVM: HomeViewModel
    
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
                RecipeView()
                    .onAppear {
                        Task {
                            homeVM.recipe = try await homeVM.getRecipeFromApi()
                        }
                    }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HomeViewModel())
    }
}
