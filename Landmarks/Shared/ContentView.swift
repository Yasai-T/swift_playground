//  ContentView.swift
//  Shared
//
//  Created by 緑川知輝 on 2021/08/21.
//

import SwiftUI

struct ContentView: View {

  @State var index = 0

  let soundPlayer = SoundPlayer()

  var body: some View {
    VStack(alignment: .leading) {
      Button(action: {
        var newIndex = 0
        repeat {
          newIndex = Int.random(in: 0...2)
        } while index == newIndex
        
          switch newIndex {
          case 0:
              soundPlayer.kickPlay()
          case 1:
              soundPlayer.tamPlay()
          case 2:
              soundPlayer.snarePlay()
          default:
              return
          }
        index = newIndex
      }) {
        switch index {
        case 0:
          Image("animal_hitsuji_shiboubi")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
        case 1:
          Image("animal_kiboshi_iwa_hyrax")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
        case 2:
          Image("animal_usaghi_netherland_dwarf")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
        default:
          Text("Error")
        }
      }
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
