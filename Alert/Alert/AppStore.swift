//
//  AppStore.swift
//  Alert
//
//  Created by kim sunchul on 2022/02/24.
//

import SwiftUI
import StoreKit

struct AppStore: View {
  @State private var showRecommended = false

  var body: some View {
    Button("Show Recommended App") {
      showRecommended.toggle()
    }
    .appStoreOverlay(isPresented: $showRecommended) {
      SKOverlay.AppConfiguration(appIdentifier: "1440611372", position: .bottom)
    }
  }
}

struct AppStore_Previews: PreviewProvider {
    static var previews: some View {
        AppStore()
    }
}
