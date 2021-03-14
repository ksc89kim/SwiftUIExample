//
//  SideBarView.swift
//  Contains
//
//  Created by kim sunchul on 2021/03/14.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
      List(1..<100) { i in
          Text("Row \(i)")
      }
      .listStyle(SidebarListStyle())
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
