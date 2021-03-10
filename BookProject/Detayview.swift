//
//  Detayview.swift
//  BookProject
//
//  Created by macbook on 10.03.2021.
//

import SwiftUI

struct Detayview: View {
    var secilenkitap : Book
    
    var body: some View {
        VStack{
            MapView(cordinate: secilenkitap.KoordinatLocation).frame(height: UIScreen.main.bounds.height * 0.3).edgesIgnoringSafeArea(.all).offset(y: -50)
            
            Gorsel(image: Image(secilenkitap.gorsel)).frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).offset( y: UIScreen.main.bounds.height * -0.25)
            
            VStack{
                HStack{
                    
                    Text(secilenkitap.isim).font(.largeTitle).foregroundColor(.red)
                    Spacer()
                    Text(secilenkitap.tarih).font(.title3).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                }
                
                HStack{
                    
                    Text(secilenkitap.yazar).font(.title2)
                    Spacer()
                    Text(secilenkitap.yer).font(.title2)
                    
                }
             

            }.padding().offset(y:-200)
        }
    }
}

struct Detayview_Previews: PreviewProvider {
    static var previews: some View {
        Detayview(secilenkitap: Lotr)
    }
}
