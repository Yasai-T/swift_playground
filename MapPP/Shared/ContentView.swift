//
//  ContentView.swift
//  Shared
//
//  Created by 緑川知輝 on 2021/09/04.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    MapView(searchKey: "東京タワー")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
