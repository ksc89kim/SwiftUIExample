//
//  FullScreenModal.swift
//  Alert
//
//  Created by kim sunchul on 2022/02/17.
//

import SwiftUI


struct FullScreenModalView: View {
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    ZStack {
      Color.primary.edgesIgnoringSafeArea(.all)
      Button("Dismiss Modal") {
        presentationMode.wrappedValue.dismiss()
      }
    }
  }
}

struct FullScreenModal: View {
  @State private var isPresented: Bool = false

    var body: some View {
      Button("Present!") {
        isPresented.toggle()
      }
      .fullScreenCover(isPresented: $isPresented) {
        FullScreenModalView()
      }
    }
}

struct FullScreenModal_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenModal()
    }
}
