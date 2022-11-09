//
//  GreenLign.swift
//  RecipeGroupAA
//
//  Created by Amelie Pocchiolo on 07/11/2022.
//

import SwiftUI

struct GreenLign: View {
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 350, height: 2)
        }
    }
}

struct GreenLign_Previews: PreviewProvider {
    static var previews: some View {
        GreenLign()
    }
}
