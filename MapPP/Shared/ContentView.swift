//
//  ContentView.swift
//  Shared
//
//  Created by 緑川知輝 on 2021/09/04.
//

import SwiftUI

struct ContentView: View {
  @State var inputText: String = ""
  @State var displaySearchKey: String = ""

  var body: some View {
    VStack {
      TextField(
        "キーワードを入力してください",
        text: $inputText,
        onCommit: {
          displaySearchKey = inputText
        }
      ).padding()
      MapView(searchKey: displaySearchKey)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
