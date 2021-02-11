//
//  InsetGroupedListStyle.swift
//  Lists
//
//  Created by kim sunchul on 2021/02/11.
//  Copyright © 2021 kim sunchul. All rights reserved.
//

import SwiftUI

struct ExampleRow: View {
  var body: some View {
    Text("Example")
  }
}
struct InsetGroupedListStyle: View {
    var body: some View {
      List {
        Section(header: Text("Examples")) {
          ForEach(0..<10) { _ in
            ExampleRow()
          }
          .listStyle(InsetGroupedListStyle())
        }
      }
    }
}

struct InsetGroupedListStyle_Previews: PreviewProvider {
    static var previews: some View {
        InsetGroupedListStyle()
    }
}
