//
//  MapView.swift
//  BookProject
//
//  Created by macbook on 10.03.2021.
//

import SwiftUI
import MapKit
struct MapView: UIViewRepresentable {
    
    var cordinate : CLLocationCoordinate2D
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: cordinate , span: span)
        
        uiView.setRegion(region, animated: true)
    }
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(cordinate: BookArray[0].KoordinatLocation)
    }
}
