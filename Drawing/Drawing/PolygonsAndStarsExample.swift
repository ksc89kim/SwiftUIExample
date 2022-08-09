//
//  PolygonsAndStarsExample.swift
//  Drawing
//
//  Created by kim sunchul on 2022/08/09.
//

import SwiftUI

struct Star: Shape {
  let corners: Int
  let smoothness: Double

  func path(in rect: CGRect) -> Path {
    guard corners >= 2 else { return Path() }

    let center = CGPoint(x: rect.width / 2, y: rect.height / 2)

    var currentAngle = -CGFloat.pi / 2

    let angleAdjustment = .pi * 2 / Double(corners * 2)

    let innerX = center.x * smoothness
    let innerY = center.y * smoothness

    var path = Path()

    var bottomEdge: Double = 0

    path.move(to: CGPoint(x: center.x * cos(currentAngle), y: center.y * sin(currentAngle)))

    for corner in 0 ..< corners * 2 {

      let sinAngle = sin(currentAngle)

      let cosAngle = cos(currentAngle)

      var bottom: Double

      if corner.isMultiple(of: 2) {
        bottom = center.y * sinAngle

        path.addLine(to: CGPoint(x: center.x * cosAngle, y: bottom))
      } else {

        bottom = innerY * sinAngle

        path.addLine(to: CGPoint(x: innerX * cosAngle, y: bottom))
      }

      if bottom > bottomEdge {
        bottomEdge = bottom
      }

      currentAngle += angleAdjustment
    }

    let unusedSpace = (rect.height / 2 - bottomEdge) / 2
    let transform = CGAffineTransform(translationX: center.x, y: center.y + unusedSpace)
    return path.applying(transform)
  }
}

struct PolygonsAndStarsExample: View {
    var body: some View {
      Star(corners: 5, smoothness: 0.45)
        .fill(.red)
        .frame(width: 200, height: 200)
        .background(.green)
    }
}

struct PolygonsAndStarsExample_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        PolygonsAndStarsExample()
          .previewInterfaceOrientation(.landscapeLeft)
        PolygonsAndStarsExample()
      }
    }
}
