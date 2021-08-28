//  ContentView.swift
//  Shared
//
//  Created by 緑川知輝 on 2021/08/21.
//

import SwiftUI

struct ContentView: View {

  var body: some View {
    VStack(alignment: .leading) {
      Text("Hello, swift!")
        .font(.largeTitle)
        .fontWeight(.ultraLight)
        .foregroundColor(Color.red)
        .multilineTextAlignment(.center)
        .padding([.top, .leading, .bottom], 8.0)
      Text("xcode !!!")
        .font(.title2)
      Button(action: {}) {
        Text("Button")
      }
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
