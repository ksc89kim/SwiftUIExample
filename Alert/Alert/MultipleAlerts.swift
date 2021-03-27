//
//  MultipleAlerts.swift
//  Alert
//
//  Created by kim sunchul on 2021/03/27.
//

import SwiftUI

struct MultipleAlerts: View {
  @State private var showingAlert1 = false
  @State private var showingAlert2 = false

  var body: some View {
    VStack {
        Button("Show 1") {
            showingAlert1 = true
        }
        .alert(isPresented: $showingAlert1) {
            Alert(title: Text("One"), message: nil, dismissButton: .cancel())
        }

        Button("Show 2") {
            showingAlert2 = true
        }
        .alert(isPresented: $showingAlert2) {
            Alert(title: Text("Two"), message: nil, dismissButton: .cancel())
        }
    }
  }
}

struct MultipleAlerts_Previews: PreviewProvider {
  static var previews: some View {
    MultipleAlerts()
  }
}
