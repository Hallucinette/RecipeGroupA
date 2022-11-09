//
//  Price.swift
//  RecipeGroupAA
//
//  Created by Esteban SEMELLIER on 07/11/2022.
//

import SwiftUI


struct Price : View {
    @Binding var hoursTime: String
    @Binding var minutesTime: String
    var body: some View {
        Text("Prix")
        HStack{
            Text("Temps")
            TextField("HH", text: $hoursTime)
                .frame(width: 50)
            Text("heure(s)")
            TextField("MM", text: $minutesTime)
                .frame(width: 50)
            Text("minute(s)")
        } .textFieldStyle(.roundedBorder)
    }
}
