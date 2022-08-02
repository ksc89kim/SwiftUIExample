//
//  AccentColorExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/02.
//

import SwiftUI

struct AccentColorExample: View {
    var body: some View {
      VStack {
        Button("Press Here") {
          print("Button pressed")
        }
      }
      .accentColor(.red)
    }
}

struct AccentColorExample_Previews: PreviewProvider {
    static var previews: some View {
        AccentColorExample()
    }
}
