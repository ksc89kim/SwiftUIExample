//
//  ClipExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/07/28.
//

import SwiftUI

struct ClipExample: View {
    var body: some View {
      Button {
        print("Pressed")
      } label: {
        Image(systemName: "bolt.fill")
          .foregroundColor(.white)
          .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
          .background(.green)
          .clipShape(Capsule())
      }
    }
}

struct ClipExample_Previews: PreviewProvider {
    static var previews: some View {
      ClipExample()
    }
}
