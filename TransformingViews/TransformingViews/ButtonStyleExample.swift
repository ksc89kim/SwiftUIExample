//
//  ButtonStyle.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/08/04.
//

import SwiftUI

struct BlueButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding()
      .background(Color(red: 0, green: 0, blue: 0.5))
      .foregroundColor(.white)
      .clipShape(Capsule())
      .scaleEffect(configuration.isPressed ? 1.2 : 1)
      .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
  }
}

struct ButtonStyleExample: View {
    var body: some View {
      Button("Press Me") {
        print("Button pressed!")
      }
      .buttonStyle(BlueButton())
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
      ButtonStyleExample()
    }
}
