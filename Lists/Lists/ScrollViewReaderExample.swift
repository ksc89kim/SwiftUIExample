//
//  ScrollViewReaderExample.swift
//  Lists
//
//  Created by kim sunchul on 2021/02/14.
//  Copyright © 2021 kim sunchul. All rights reserved.
//

import SwiftUI

struct ScrollViewReaderExample: View {
    var body: some View {
      if #available(iOS 14.0, *) {
        ScrollViewReader { proxy in
          VStack {
            Button("Jump to #50") {
              proxy.scrollTo(50, anchor: .top)
            }
            List(0..<100, id: \.self) { i in
              Text("Example \(i)")
                .id(i)
            }
          }

        }
      } else {
        // Fallback on earlier versions
      }
    }
}

struct ScrollViewReaderExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderExample()
    }
}
