//
//  HideStatusView.swift
//  Contains
//
//  Created by kim sunchul on 2021/03/14.
//

import SwiftUI

struct HideStatusView: View {
  @State private var hideStatusBar = false


    var body: some View {
      Button("Toggle Status Bar") {
          withAnimation {
              hideStatusBar.toggle()
          }
      }
      .statusBar(hidden: hideStatusBar)
    }
}

struct HideStatusView_Previews: PreviewProvider {
    static var previews: some View {
        HideStatusView()
    }
}
