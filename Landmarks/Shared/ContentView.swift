//  ContentView.swift
//  Shared
//
//  Created by 緑川知輝 on 2021/08/21.
//

import SwiftUI

struct ContentView: View {

  @State var outputText = "hello world"

  var body: some View {
    VStack(alignment: .leading) {
      Image("animal_hitsuji_shiboubi")
        .resizable()
        .aspectRatio(contentMode: ContentMode.fit)
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
