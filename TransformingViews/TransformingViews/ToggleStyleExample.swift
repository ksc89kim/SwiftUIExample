//
//  ToggleStyleExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/04.
//

import SwiftUI

struct CheckToggleStyle: ToggleStyle {
  func makeBody(configuration: Configuration) -> some View {
    Button {
      configuration.isOn.toggle()
    } label: {
      Label {
        configuration.label
      } icon: {
        Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
          .foregroundColor(configuration.isOn ? .accentColor : .secondary)
          .accessibilityLabel(Text(configuration.isOn ? "Checked" : "Unchecked"))
          .imageScale(.large)
      }
    }
    .buttonStyle(PlainButtonStyle())
  }
}

struct ToggleStyleExample: View {
  @State private var isOn = false

  var body: some View {
    Toggle("Switch Me", isOn: $isOn)
      .toggleStyle(CheckToggleStyle())
  }
}

struct ToggleStyleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStyleExample()
    }
}
