//
//  CheckerBoardExample.swift
//  Drawing
//
//  Created by kim sunchul on 2022/08/25.
//

import SwiftUI

struct CheckerBoard: Shape {
  let rows: Int
  let colums: Int

  func path(in rect: CGRect) -> Path {
    var path = Path()

    let rowSize = rect.height / Double(rows)
    let columnSize = rect.width / Double(colums)

    for row in 0 ..< rows {
      for column in 0 ..< colums {
        if (row + column).isMultiple(of: 2) {
          let startX = columnSize * Double(column)
          let startY = rowSize * Double(row)

          let rect = CGRect(x: startX, y: startY, width: columnSize, height: rowSize)
          path.addRect(rect)
        }
      }
    }

    return path
  }
}

struct CheckerBoardExample: View {
    var body: some View {
        CheckerBoard(rows: 16, colums: 16)
        .fill(.red)
        .frame(width: 200, height: 200)
    }
}

struct CheckerBoardExample_Previews: PreviewProvider {
    static var previews: some View {
      CheckerBoardExample()
    }
}
