//
//  MapView.swift
//  MapView
//
//  Created by 緑川知輝 on 2021/09/04.
//

import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
  func makeUIView(context: Context) -> some MKMapView {
    MKMapView()
  }

  func updateUIView(_ uiView: UIViewType, context: Context) {

  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}
