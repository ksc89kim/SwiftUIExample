//
//  SelectionList.swift
//  Lists
//
//  Created by kim sunchul on 2021/03/01.
//  Copyright © 2021 kim sunchul. All rights reserved.
//

import SwiftUI

struct SelectionList: View {
  @State private var selection: String?

  let names = ["Cyril", "Lana", "Mallory", "Sterling"]

    var body: some View {
      NavigationView {
        if #available(iOS 14.0, *) {
          List(names, id: \.self, selection: $selection) { name in
            Text(name)
          }
          .navigationTitle("List Selection")
          .toolbar {
            EditButton()
          }
        } else {
          // Fallback on earlier versions
        }
      }
    }
}

struct SelectionList_Previews: PreviewProvider {
    static var previews: some View {
        SelectionList()
    }
}
