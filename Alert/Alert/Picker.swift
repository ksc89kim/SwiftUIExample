//
//  Picker.swift
//  Alert
//
//  Created by kim sunchul on 2022/02/24.
//

import SwiftUI

struct PickerTest: View {
  @State private var selection = "Red"
  let colors = ["Red", "Green", "Blue", "Black", "Tartan"]
    var body: some View {
      VStack {
        Picker("Select a paint color", selection: $selection) {
          ForEach(colors, id: \.self) {
            Text($0)
          }
        }
        .pickerStyle(.menu)
        Text("Selected color: \(selection)")
      }
    }
}

struct Picker_Previews: PreviewProvider {
    static var previews: some View {
      PickerTest()
    }
}
