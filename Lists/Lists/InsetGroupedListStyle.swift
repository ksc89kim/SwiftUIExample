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
        Text("Item 1")
        Text("Item 2")
        Text("Item 3")
      }
      .listStyle(GroupedListStyle())
      .environment(\.horizontalSizeClass, .regular)
    }
}

struct InsetGroupedListStyle_Previews: PreviewProvider {
    static var previews: some View {
        InsetGroupedListStyle()
    }
}
