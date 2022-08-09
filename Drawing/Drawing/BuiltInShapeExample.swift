//
//  BuiltInShapeExample.swift
//  Drawing
//
//  Created by kim sunchul on 2022/08/09.
//

import SwiftUI

struct BuiltInShapeExample: View {
    var body: some View {
      ZStack {
        Rectangle()
          .fill(.gray)
          .frame(width: 200, height: 200)
        RoundedRectangle(cornerRadius: 25, style: .continuous)
          .fill(.red)
          .frame(width: 200, height: 200)
        Capsule()
          .fill(.green)
          .frame(width: 100, height: 50)
        Ellipse()
          .fill(.blue)
          .frame(width: 100, height: 50)
        Circle()
          .fill(.white)
          .frame(width: 100, height: 50)
      }
    }
}

struct BuiltInShapeExample_Previews: PreviewProvider {
    static var previews: some View {
        BuiltInShapeExample()
    }
}
