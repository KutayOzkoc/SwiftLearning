//
//  Book.swift
//  BookProject
//
//  Created by macbook on 10.03.2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Book : Identifiable{
    var id = UUID()
    var isim : String
    var gorsel : String
    var yazar : String
    var yer : String
    var tarih : String
    var cordinate : Koordinat
    var KoordinatLocation : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: cordinate.latitude, longitude: cordinate.Longitude)
    }
}

struct Koordinat{
    var latitude : Double
    var Longitude : Double
    
}

let HarryPotter = Book(isim: "Harry Potter", gorsel: "1", yazar: "Rowling", yer: "England", tarih: "2000's", cordinate: Koordinat(latitude: 51.489845, Longitude: -0.1642387))

let Got = Book(isim: "Game of thrones", gorsel: "3", yazar: "Martin", yer: "MiddleEast", tarih: "2010's", cordinate: Koordinat(latitude: 53.478764, Longitude: -2.2486557))

let Lotr = Book(isim: "Lord of the rings", gorsel: "2", yazar: "Tolkien", yer: "England", tarih: "2000's", cordinate: Koordinat(latitude: 40.7109374, Longitude: -74.0620852))


let BookArray = [HarryPotter,Got,Lotr]
