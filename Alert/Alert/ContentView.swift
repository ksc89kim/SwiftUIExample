//
//  ContentView.swift
//  Alert
//
//  Created by kim sunchul on 2021/03/27.
//

import SwiftUI

struct ContentView: View {
  @State private var showingAlert = false

    var body: some View {
      Button("Show Alert") {
          showingAlert = true
      }
      .alert(isPresented: $showingAlert) {
          Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
