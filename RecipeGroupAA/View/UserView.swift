//
//  ContentView.swift
//  Profil
//
//  Created by Mahdia Amriou on 06/11/2022.
//

import SwiftUI
struct UserView: View {
    
    @ObservedObject var userVM = UserViewModel()
    
    
    
    let user: User
    @State var name = ""
    var body: some View {
        VStack {
            Image(user.imageName)
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius:3)
            Text(user.firstName)
                .font(.title)
                .fontWeight(.medium)
//            Form{
////                Section("test") {
//                HStack{
//                    Text("test")
//                    Spacer()
//                    TextField("name", text: $name)
//                }
////                }
//            }
    
            List (userVM.users){ user in
                
                
                HStack {
                    Text("First Name")
                    Spacer()
                    Text(user.firstName)
                        .foregroundColor(.gray)
                        .font(.callout)
                    
                }
                HStack {
                    Text("Last Name")
                    Spacer()
                    Text(user.lastName)
                        .foregroundColor(.gray)
                        .font(.callout)
                    
                }
                
                HStack {
                    Text("Email")
                    Spacer()
                    Text(user.email)
                        .foregroundColor(.gray)
                        .font(.callout)
                    
                }
                HStack {
                    Text("Password")
                    Spacer()
                    Text(user.password)
                        .foregroundColor(.gray)
                        .font(.callout)
                    
                }
                
                
            }//.listStyle(.plain)
            
        
         
                
                VStack (alignment: .leading){
                    Text("Mes recettes ")
                        .font(.title)
                        .fontWeight(.medium)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        Image("plat")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .clipped()
                        Image("dessert")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .clipped()
                        Image("entree")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .clipped()
                        
                    }
                }
                    Spacer()
                } .padding()
            
                }
                
        
            }
            
            
        }
      
 
    
    struct UserView_Previews: PreviewProvider {
        
        static var previews: some View {
            UserView(user: User(id:1, firstName:"Sandra", lastName:"balli", imageName: "profil.png", email:"sandra@gmail.com", password:"********"))}
    
                 
                 
                 }

