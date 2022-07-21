//
//  InteractiveDismissDisabled.swift
//  PresentingViews
//
//  Created by kim sunchul on 2022/07/21.
//

import SwiftUI

struct ExampleSheet: View {
  @Environment(\.presentationMode) var presentationMode
  @State private var termsAccepted = false

  var body: some View {
    VStack {
      Text("Terms and condtions")
        .font(.title)
      Text("Lots of legales here")
      Toggle("Accept", isOn: $termsAccepted)
    }
    .padding()
    .interactiveDismissDisabled(!termsAccepted)
  }

  func close() {
    presentationMode.wrappedValue.dismiss()
  }
}

struct InteractiveDismissDisabled: View {
  @State private var showingSheet = false

  var body: some View {
    Button("Show Sheet") {
      showingSheet.toggle()
    }
    .sheet(isPresented: $showingSheet, content: ExampleSheet.init)
  }
}

struct InteractiveDismissDisabled_Previews: PreviewProvider {
  static var previews: some View {
    InteractiveDismissDisabled()
  }
}
