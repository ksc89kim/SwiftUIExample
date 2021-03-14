//
//  NavigationTestView.swift
//  Contains
//
//  Created by kim sunchul on 2021/03/14.
//

import SwiftUI

struct NavigationTestView: View {
    var body: some View {
      NavigationView {
        Text("This is a great app")
          .navigationTitle("SwiftUI")
          .toolbar {
              ToolbarItemGroup(placement: .bottomBar) {
                  Button("First") {
                      print("Pressed")
                  }

                  Spacer()

                  Button("Second") {
                      print("Pressed")
                  }
              }
          }

//          .navigationTitle("Welcome")
//          .toolbar(content: {
//            ToolbarItem(placement: .navigationBarTrailing) {
//              Button("??") {
//                print("Button Tap")
//              }
//            }
//            ToolbarItemGroup(placement: .navigationBarLeading) {
//              Button("??") {
//                print("Button Tap")
//              }
//              Button("??1") {
//                print("Button Tap")
//              }
//            }
//          })
//          .navigationBarTitleDisplayMode(.inline)

        
      }
    }
}

struct NavigationTestView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTestView()
    }
}
