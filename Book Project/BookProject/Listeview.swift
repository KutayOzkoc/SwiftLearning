//
//  ContentView.swift
//  BookProject
//
//  Created by macbook on 10.03.2021.
//

import SwiftUI

struct Listeview: View {
    var body: some View {
        NavigationView{
            List(BookArray){
                kitaplar in NavigationLink(
                    destination: Detayview(secilenkitap: kitaplar),
                    label: {
                        Text(kitaplar.isim)
                    })
            }.navigationTitle(Text("Kitap Listemiz"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Listeview()
    }
}
