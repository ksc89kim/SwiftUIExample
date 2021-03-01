//
//  DiableView.swift
//  Form
//
//  Created by kim sunchul on 2021/03/01.
//

import SwiftUI

struct DiableView: View {
  @State private var agreedToTerms = false

    var body: some View {
      NavigationView {
        Form {
          Section {
            Toggle("Agree to  terms...", isOn: $agreedToTerms)
          }
          Section {
            Button("Continue") {

            }
            .disabled(agreedToTerms == false)
          }
        }
      }
    }
}

struct DiableView_Previews: PreviewProvider {
    static var previews: some View {
        DiableView()
    }
}
