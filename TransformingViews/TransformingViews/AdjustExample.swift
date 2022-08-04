//
//  AdjustExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/04.
//

import SwiftUI

struct AdjustExample: View {
    var body: some View {
//      Image("cat")
//          .colorMultiply(.red)
//      Image("boats")
//          .saturation(0.3)
      Image("sunset")
          .contrast(0.5)
    }
}

struct AdjustExample_Previews: PreviewProvider {
    static var previews: some View {
        AdjustExample()
    }
}
