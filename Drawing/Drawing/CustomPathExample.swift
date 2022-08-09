//
//  CustomPathExample.swift
//  Drawing
//
//  Created by kim sunchul on 2022/08/09.
//

import SwiftUI

struct ShrinkingSquares: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()

    for i in stride(from: 1, through: 100, by: 5.0) {
      let rect = CGRect(x: 0, y: 0, width: rect.width, height: rect.height)
      let insetRect = rect.insetBy(dx: i, dy: i)
      path.addRect(insetRect)
    }

    return path
  }
}

struct CustomPathExample: View {
    var body: some View {
      ShrinkingSquares()
        .stroke()
        .frame(width: 200, height: 200)

    }
}

struct CustomPathExample_Previews: PreviewProvider {
    static var previews: some View {
        CustomPathExample()
    }
}
