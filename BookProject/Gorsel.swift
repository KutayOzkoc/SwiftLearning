//
//  Gorsel.swift
//  BookProject
//
//  Created by macbook on 10.03.2021.
//

import SwiftUI

struct Gorsel: View {
    var image : Image
    var body: some View {
        image .resizable().aspectRatio(contentMode: .fit).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.white,lineWidth: 5)).shadow(radius: 15)
    }
}

struct Gorsel_Previews: PreviewProvider {
    static var previews: some View {
        Gorsel(image: Image("1"))
    }
}
