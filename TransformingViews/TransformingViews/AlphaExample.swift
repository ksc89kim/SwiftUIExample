//
//  AlphaExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/02.
//

import SwiftUI

struct AlphaExample: View {
  @State private var opacity = 0.5

    var body: some View {
      VStack {
        Text("Now you see me")
        .padding()
        .background(.red)
        .opacity(opacity)
        Slider(value: $opacity, in: 0...1)
          .padding()

      }

    }
}

struct AlphaExample_Previews: PreviewProvider {
    static var previews: some View {
        AlphaExample()
    }
}
