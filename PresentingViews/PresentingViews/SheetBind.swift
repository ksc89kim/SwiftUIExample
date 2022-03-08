//
//  SheetBind.swift
//  Alert
//
//  Created by kim sunchul on 2022/02/17.
//

import SwiftUI

struct DismissingView: View {
  @Binding var isPresented: Bool
  
  var body: some View {
    Button("Dismiss Me") {
      isPresented = false
    }
  }
}

struct SheetBind: View {
  @State private var showingDetail = false

  var body: some View {
    Button("Show Detail") {
      showingDetail = true
    }
    .sheet(isPresented: $showingDetail) {
      DismissingView(isPresented: $showingDetail)
    }
  }
}

struct SheetBind_Previews: PreviewProvider {
  static var previews: some View {
    SheetBind()
  }
}
