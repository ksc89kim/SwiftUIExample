//
//  OffsetExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/07/26.
//

import SwiftUI

struct OffsetExample: View {
    var body: some View {
//      VStack {
//        Text("Home")
//        Text("Options")
//          .offset(y: 15)
//          .padding(.bottom, 15)
//        Text("Help")
//      }
//      HStack {
//        Text("Before")
//          .background(.red)
//          .offset(y: 15)
//        Text("After")
//          .offset(y: 15)
//          .background(.red)
//      }
      ZStack(alignment: .bottomTrailing) {
        Image("scotland")
        Text("Photo creadit: Paul Hudson")
          .padding(4)
          .background(.black)
          .foregroundColor(.white)
          .offset(x: -5, y: -5)
      }
    }
}

struct OffsetExample_Previews: PreviewProvider {
    static var previews: some View {
      OffsetExample()
    }
}
