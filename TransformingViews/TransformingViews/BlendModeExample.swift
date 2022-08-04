//
//  BlendModeExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/04.
//

import SwiftUI

struct BlendModeExample: View {
    var body: some View {
      ZStack {
        Circle()
          .fill(.red)
          .frame(width: 200, height: 200)
          .offset(x: -50)
          .blendMode(.screen)
        Circle()
            .fill(.blue)
            .frame(width: 200, height: 200)
            .offset(x: 50)
            .blendMode(.screen)
      }
      .frame(width: 400)
    }
}

struct BlendModeExample_Previews: PreviewProvider {
    static var previews: some View {
        BlendModeExample()
    }
}
