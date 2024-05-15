//
//  CustomMapView.swift
//  vakandi-app
//
//  Created by Administrador on 03/05/24.
//

import SwiftUI
import MapKit

struct CustomMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  24.735654553686054, longitude: -107.36718093494063), span: MKCoordinateSpan(latitudeDelta:  0.01, longitudeDelta:  0.01))
  
    let annotations = [
           City(name: "Culiacán", coordinate: CLLocationCoordinate2D(latitude:  24.735654553686054, longitude: -107.36718093494063)),
          
       ]
       var body: some View {
           Map(coordinateRegion: $region, annotationItems: annotations){
               MapPin(coordinate: $0.coordinate)
           }
       }
}

#Preview {
    CustomMapView()
}
