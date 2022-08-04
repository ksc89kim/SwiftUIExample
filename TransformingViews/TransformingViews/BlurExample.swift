//
//  BlurExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/04.
//

import SwiftUI

struct BlurExample: View {
  @State private var blurAmount = 0.0

    var body: some View {
//      Image("dog")
//        .resizable()
//        .frame(width: 300, height: 300)
//        .blur(radius: 20)
      VStack {
        Text("Welcome to my SwiftUI")
          .blur(radius: blurAmount)
        Slider(value: $blurAmount, in: 0...20)
      }

    }
}

struct BlurExample_Previews: PreviewProvider {
    static var previews: some View {
        BlurExample()
    }
}
