//
//  OptionalAlert.swift
//  Alert
//
//  Created by kim sunchul on 2021/03/27.
//

import SwiftUI

struct TVShow: Identifiable {
  var id: String { name }
  let name: String
}

struct OptionalAlert: View {
  @State private var selectedShow: TVShow?

  var body: some View {
    VStack(spacing: 20) {
      Text("What is your favorite TV show?")
        .font(.headline)

      Button("Select Ted Lasso") {
        selectedShow = TVShow(name: "Ted Lasso")
      }

      Button("Select Bridgerton") {
        selectedShow = TVShow(name: "Bridgerton")
      }
    }
    .alert(item: $selectedShow) { show in
      Alert(title: Text(show.name), message: Text("Great choice!"), dismissButton: .cancel())
    }

  }
}

struct OptionalAlert_Previews: PreviewProvider {
  static var previews: some View {
    OptionalAlert()
  }
}
