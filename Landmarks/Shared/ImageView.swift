//
//  ImageView.swift
//  ImageView
//
//  Created by 緑川知輝 on 2021/08/28.
//

import SwiftUI

struct ImageView: View {
  let imageName: String

  var body: some View {
    Image(imageName)
      .resizable()
      .aspectRatio(contentMode: .fit)
  }
}

struct ImageView_Previews: PreviewProvider {
  static var previews: some View {
    ImageView(imageName: "animal_hitsuji_shiboubi")
  }
}
