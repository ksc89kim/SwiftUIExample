//
//  MaksExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/02.
//

import SwiftUI

struct MaksExample: View {
    var body: some View {
      Image("laser-show")
        .resizable()
        .frame(width: 300, height: 300)
        .mask {
          Text("SWIFT")
            .font(.system(size: 72))
        }
    }
}

struct MaksExample_Previews: PreviewProvider {
    static var previews: some View {
        MaksExample()
    }
}
