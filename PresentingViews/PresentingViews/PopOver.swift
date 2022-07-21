//
//  PopOver.swift
//  PresentingViews
//
//  Created by kim sunchul on 2022/07/21.
//

import SwiftUI

struct PopOver: View {
  @State private var  showingPopover = false

  var body: some View {
    Button("Show Menu") {
      showingPopover = true
    }
    .popover(isPresented: $showingPopover) {
      Text("Your content here")
        .font(.headline)
        .padding()
    }
  }
}

struct PopOver_Previews: PreviewProvider {
  static var previews: some View {
    PopOver()
  }
}
