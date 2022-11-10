//
//  ButtonShare.swift
//  frontperso
//
//  Created by Amelie Pocchiolo on 06/11/2022.
//

import SwiftUI

struct ButtonShare: View {
    var url = "test"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 250, height: 50)
                .foregroundColor(.green)
            ShareLink(item: url, subject: Text("Check out this link"), message: Text("Regarde ls super recette que j'ai vu sur Eat It !")) {
                Label("Partager la recette", systemImage:  "square.and.arrow.up")
            }
        }
        .padding()
    }
}

struct ButtonShare_Previews: PreviewProvider {
    static var previews: some View {
        ButtonShare()
    }
}
