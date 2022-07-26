//
//  BorderExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/07/26.
//

import SwiftUI

struct BorderExample: View {
    var body: some View {
//        Text("Hacking with Swift")
//        .padding()
//        .border(.red, width: 4)

      Text("Hacking with Swift")
      .padding()
      .overlay(
        RoundedRectangle(cornerRadius: 16)
          .stroke(.blue, lineWidth: 4)
      )
    }
}

struct BorderExample_Previews: PreviewProvider {
    static var previews: some View {
        BorderExample()
    }
}
