//
//  Sheet.swift
//  Alert
//
//  Created by kim sunchul on 2022/02/17.
//

import SwiftUI

struct SheetView: View {
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    Button("Press to dismiss") {
      presentationMode.wrappedValue.dismiss()
    }
    .font(.title)
    .padding()
    .background(Color.black)
  }
}

struct Sheet: View {
  @State private var showingSheet = false

  var body: some View {
    Button("Show Sheet") {
      showingSheet.toggle()
    }
    .sheet(isPresented: $showingSheet) {
      SheetView()
    }

  }
}

struct Sheet_Previews: PreviewProvider {
  static var previews: some View {
    Sheet()
  }
}
