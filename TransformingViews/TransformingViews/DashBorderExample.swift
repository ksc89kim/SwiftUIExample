//
//  DashBorderExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/07/28.
//

import SwiftUI

struct DashBorderExample: View {
  @State private var phase = 0.0

    var body: some View {
      Rectangle()
        .strokeBorder(style: StrokeStyle(lineWidth: 4, dash: [10], dashPhase: phase))
        .onAppear {
          withAnimation(.linear.repeatForever(autoreverses: false)) {
            phase -= 20
          }
        }
    }
}

struct DashBorderExample_Previews: PreviewProvider {
    static var previews: some View {
        DashBorderExample()
    }
}
