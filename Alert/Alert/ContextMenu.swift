//
//  ContextMenu.swift
//  Alert
//
//  Created by kim sunchul on 2022/02/22.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
        Text("Options")
        .contextMenu {
          Button {
            print("Change country setting")
          } label: {
            Label("Choose Country", systemImage: "globe")
          }
          Button {
            print("Enable geolocation")
          } label: {
            Label("Detect Location", systemImage: "location.circle")
          }
        }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
