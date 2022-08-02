//
//  RotationExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/02.
//

import SwiftUI

struct RotationExample: View {
  @State private var rotation = 0.0

  var body: some View {
//    Text("Up we go")
//      .rotationEffect(.degrees(-90))
//      .rotationEffect(.radians(.pi))
//    VStack {
//      Slider(value: $rotation, in: 0...360)
//      Text("Up we go")
//        .rotationEffect(.degrees(rotation), anchor: .topLeading)
      Text("EPISODE LLVM")
      .font(.largeTitle)
      .foregroundColor(.yellow)
      .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
  }
}

struct RotationExample_Previews: PreviewProvider {
  static var previews: some View {
    RotationExample()
  }
}
