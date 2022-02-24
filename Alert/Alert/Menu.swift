//
//  Menu.swift
//  Alert
//
//  Created by kim sunchul on 2022/02/24.
//

import SwiftUI

struct MenuTest: View {
    var body: some View {
      Menu("Options") {
        Button("Order Now", action: placeOrder)
        Button("Adjust Order", action: adjustOrder)
        Menu("Advanced") {
          Button("Rename", action: rename)
          Button("Delay", action: delay)
        }
        Button("Cancel", action: cancelOrder)
      }
    }

  func justDoIt() {
    print("Button was tapped")
  }

  func placeOrder() {}
  func adjustOrder() {}
  func rename() {}
  func delay() {}
  func cancelOrder() {}
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
      MenuTest()
    }
}
