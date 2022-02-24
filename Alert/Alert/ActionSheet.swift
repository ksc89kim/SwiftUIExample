//
//  ActionSheet.swift
//  Alert
//
//  Created by kim sunchul on 2022/02/22.
//

import SwiftUI

struct ActionSheet: View {
   @State private var showingOptions = false
   @State private var selectection = "None"

    var body: some View {
      VStack {
        Text(selectection)
        if #available(iOS 15.0, *) {
          Button("Confirm paint Color") {
            showingOptions = true
          }
          .confirmationDialog("Select a color", isPresented: $showingOptions, titleVisibility: .visible) {
            ForEach(["Red", "Green", "Blud"], id: \.self) { color in
              Button(color) {
                selectection = color
              }
            }
          }
        } else {
          // Fallback on earlier versions
        }
      }
    }
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet()
    }
}
