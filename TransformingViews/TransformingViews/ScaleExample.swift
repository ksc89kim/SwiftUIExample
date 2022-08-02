//
//  ScaleExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/02.
//

import SwiftUI

struct ScaleExample: View {
    var body: some View {
//        Text("Up we go")
//        .scaleEffect(x: 1, y: 5)
//        .frame(width: 300, height: 300)
      VStack {
        Text("Up we go")
          .scaleEffect(2, anchor: .bottomTrailing)
        Text("Up we go")
      }
    }
}

struct ScaleExample_Previews: PreviewProvider {
    static var previews: some View {
        ScaleExample()
    }
}
