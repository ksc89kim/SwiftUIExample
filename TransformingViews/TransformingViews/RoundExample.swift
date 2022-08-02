//
//  RoundExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/02.
//

import SwiftUI

struct RoundExample: View {
  var body: some View {
//    Text("Round Me")
//      .padding()
//      .background(.red)
//      .cornerRadius(15)
    Text("Round Me")
      .padding()
      .background(.red)
      .clipShape(Capsule())
  }
}

struct RoundExample_Previews: PreviewProvider {
  static var previews: some View {
    RoundExample()
  }
}
