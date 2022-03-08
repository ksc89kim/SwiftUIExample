//
//  SecondProgrammaticNavigation.swift
//  PresentingViews
//
//  Created by kim sunchul on 2022/03/08.
//

import SwiftUI

enum Selction: String, CaseIterable {
    case a
    case b
}

struct SecondProgrammaticNavigation: View {
  @State private var selection: Selction? = nil

    var body: some View {
      NavigationView {
        VStack {

          NavigationLink(destination: Text("A"), tag: .a, selection: $selection) { EmptyView() }
          NavigationLink(destination: Text("B"), tag: .b, selection: $selection) { EmptyView() }

          Button("Tap to show A") {
            selection = .a
          }

          Button("Tap to show B") {
            selection = .b
          }
        }
      }

      .navigationTitle("Navigation")
    }
}

struct SecondProgrammaticNavigation_Previews: PreviewProvider {
    static var previews: some View {
        SecondProgrammaticNavigation()
    }
}
