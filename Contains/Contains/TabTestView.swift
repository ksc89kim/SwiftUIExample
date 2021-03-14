//
//  TabTestView.swift
//  Contains
//
//  Created by kim sunchul on 2021/03/14.
//

import SwiftUI

struct TabTestView: View {
  @State var selectedView = 1

    var body: some View {
      TabView(selection: $selectedView) {
        Button("Show Second View") {
          selectedView = 2
        }
          .padding()
          .tabItem {
//            Image(systemName: "1.circle")
//            Text("First")
            Label("First", systemImage: "1.circle")
          }
          .tag(1)
        Text("SecondView")
          .padding()
          .tabItem {
            Image(systemName: "2.circle")
            Text("Second")
            
          }
          .tag(2)
      }
    }
}

struct TabTestView_Previews: PreviewProvider {
    static var previews: some View {
        TabTestView()
    }
}
