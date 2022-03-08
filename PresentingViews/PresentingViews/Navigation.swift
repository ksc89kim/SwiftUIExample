//
//  Navigation.swift
//  PresentingViews
//
//  Created by kim sunchul on 2022/03/08.
//

import SwiftUI

struct SecondView: View {
  var body: some View {
    Text("This is the detail view")
  }
}

struct NavigationViewTest: View {
    var body: some View {
      NavigationView {
        VStack {
          NavigationLink(destination: SecondView()) {
            Text("Show Detail View")
          }
          .navigationTitle("Navigation")
        }
      }
    }
}

struct NavigationViewTest_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewTest()
    }
}
