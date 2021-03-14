//
//  DisclosureGroupView.swift
//  Contains
//
//  Created by kim sunchul on 2021/03/14.
//

import SwiftUI

struct DisclosureGroupView: View {
  @State private var revealDetails = false

    var body: some View {

      DisclosureGroup("Show Temrs", isExpanded: $revealDetails) {
        Text("eeee")
      }
      .frame(width: 300)

    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
      DisclosureGroupView()
    }
}
