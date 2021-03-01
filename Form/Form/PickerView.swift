//
//  PickerView.swift
//  Form
//
//  Created by kim sunchul on 2021/03/01.
//

import SwiftUI

struct PickerView: View {
  @State private var selectedStrength = "Mild"
  let strengths = ["Mild", "Medium", "Mature"]
    var body: some View {
      NavigationView {
        Section {
          Picker("Strength", selection: $selectedStrength) {
            ForEach(strengths, id: \.self) {
              Text($0)
            }
          }
          .pickerStyle(WheelPickerStyle())
        }
      }
      .navigationTitle("Select your cheese")
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
