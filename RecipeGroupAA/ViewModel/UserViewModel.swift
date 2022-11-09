//
//  ViewModel.swift
//  Profil
//
//  Created by Mahdia Amriou on 07/11/2022.
//
import Foundation
class UserViewModel: ObservableObject {
    
    @Published var users = [
        
        User(id:1, firstName: "Sandra", lastName: "balli", imageName: "profil.png", email: "saandra@gmail.com", password: "*********")
      
        
    ]
}

