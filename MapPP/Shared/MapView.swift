//
//  MapView.swift
//  MapView
//
//  Created by 緑川知輝 on 2021/09/04.
//

import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
  let searchKey: String
  func makeUIView(context: Context) -> some MKMapView {
    MKMapView()
  }

  func updateUIView(_ uiView: UIViewType, context: Context) {
    let geocoder = CLGeocoder()

    geocoder.geocodeAddressString(
      searchKey,
      completionHandler: { (placemarks, error) in
        if let unwrapPlacemarks = placemarks,
          let firstPlacemark = unwrapPlacemarks.first,
          let location = firstPlacemark.location
        {
          let targetCoodinate = location.coordinate
          print(targetCoodinate)
        }
      })

  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(searchKey: "東京タワー")
  }
}
