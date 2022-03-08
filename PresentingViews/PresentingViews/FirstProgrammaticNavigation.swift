//
//  FirstProgrammaticNavigation.swift
//  PresentingViews
//
//  Created by kim sunchul on 2022/03/08.
//

import SwiftUI

struct FirstProgrammaticNavigation: View {
  @State private var isShowingDetailView = false

    var body: some View {
      NavigationView {
        VStack {
          NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) { EmptyView() }
          Button("Tap to show detail") {
            isShowingDetailView = true
          }

        }
      }
    }
}

struct FirstProgrammaticNavigation_Previews: PreviewProvider {
    static var previews: some View {
        FirstProgrammaticNavigation()
    }
}
