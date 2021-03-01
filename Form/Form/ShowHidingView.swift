//
//  ShowHidingView.swift
//  Form
//
//  Created by kim sunchul on 2021/03/01.
//

import SwiftUI

struct ShowHidingView: View {
  @State private var showingAdvancedOptions = false
  @State private var enableLogging = false
    var body: some View {
      Form {
        Section {
          Toggle("Show advanced options", isOn: $showingAdvancedOptions)
        }

        if showingAdvancedOptions {
          Toggle("Enable logging", isOn: $enableLogging)
        }
      }
    }
}

struct ShowHidingView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHidingView()
    }
}
