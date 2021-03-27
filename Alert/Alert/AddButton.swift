//
//  AddButton.swift
//  Alert
//
//  Created by kim sunchul on 2021/03/27.
//

import SwiftUI

struct AddButton: View {
  @State private var showingAlert = false

    var body: some View {
      Button("Show Alert") {
          showingAlert = true
      }
      .alert(isPresented:$showingAlert) {
          Alert(
              title: Text("Are you sure you want to delete this?"),
              message: Text("There is no undo"),
              primaryButton: .destructive(Text("Delete")) {
                  print("Deleting...")
              },
              secondaryButton: .cancel()
          )
      }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
