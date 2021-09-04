//
//  ContentView.swift
//  Shared
//
//  Created by 緑川知輝 on 2021/09/04.
//

import MapKit
import SwiftUI

struct ContentView: View {
  @State var inputText: String = ""
  @State var displaySearchKey: String = ""
  @State var displayMapType: MKMapType = .standard

  var body: some View {
    VStack {
      TextField(
        "キーワードを入力してください",
        text: $inputText,
        onCommit: {
          displaySearchKey = inputText
        }
      ).padding()
      ZStack(alignment: .bottomTrailing) {
        MapView(
          searchKey: displaySearchKey,
          mapType: displayMapType
        )
        Button(action: {
          switch displayMapType {
          case .standard:
            displayMapType = .satellite
          case .satellite:
            displayMapType = .hybrid
          case .hybrid:
            displayMapType = .satelliteFlyover
          case .satelliteFlyover:
            displayMapType = .hybridFlyover
          case .hybridFlyover:
            displayMapType = .mutedStandard
          default:
            return
          }
        }) {
          Image(systemName: "map")
            .resizable()
            .frame(
              width: 35.0, height: 35.0,
              alignment: .leading
            )
        }
        .padding(.trailing, 20.0)
        .padding(.bottom, 30.0)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
