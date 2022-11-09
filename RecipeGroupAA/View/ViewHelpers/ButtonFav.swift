//
//  ButtonFav.swift
//  frontperso
//
//  Created by Amelie Pocchiolo on 06/11/2022.
//

import SwiftUI

struct ButtonFav: View {
    
    @State var fav: Bool = false
    var tabFav = [Int]()
    
    var body: some View {
        Button {
            if fav == false {
                fav = true
             //   tabFav.append(Favorite.re)
            } else {
                fav = false
            }
        } label: {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                .frame(width: 50)
                
                if fav == false {
                    Image(systemName: "heart")
                        .foregroundColor(.green)
                } else {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct ButtonFav_Previews: PreviewProvider {
    static var previews: some View {
        ButtonFav()
    }
}
