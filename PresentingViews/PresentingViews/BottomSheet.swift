//
//  BottomSheet.swift
//  PresentingViews
//
//  Created by kim sunchul on 2022/07/21.
//

import SwiftUI

struct BottomSheet: View {
  @State private var showingCredits = false
//  let heights = stride(from: 0.1, through: 1.0, by: 0.1).map { PresentationDetent.fraction($0) }

  var body: some View {
    Button("Show Credits") {
        showingCredits.toggle()
    }
    .sheet(isPresented: $showingCredits) {
        Text("This app was brought to you by Hacking with Swift")
//            .presentationDetents(Set(heights))
    }
  }
}

struct BottomSheet_Previews: PreviewProvider {
  static var previews: some View {
    BottomSheet()
  }
}
