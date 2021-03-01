//
//  BasicFormView.swift
//  Form
//
//  Created by kim sunchul on 2021/03/01.
//

import SwiftUI

struct BasicFormView: View {
  @State private var enableLogging = false
  @State private var selectedColor = "Red"
  @State private var colors = ["Red", "Green", "Blue"]

    var body: some View {
      NavigationView {
        Form {
          Section(footer: Text("Footer")) {
            Picker("Select a color", selection:$selectedColor) {
              ForEach(colors, id: \.self) {
                Text($0)
              }
            }
            .pickerStyle(SegmentedPickerStyle())
            Toggle("Enable Logging", isOn: $enableLogging)
          }

          Section {
            Button("Save change") {

            }
          }

        }
      }
      .navigationTitle("Settings")

    }
}

struct BasicFormView_Previews: PreviewProvider {
    static var previews: some View {
        BasicFormView()
    }
}
