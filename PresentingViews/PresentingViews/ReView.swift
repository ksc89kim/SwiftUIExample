//
//  ReView.swift
//  PresentingViews
//
//  Created by kim sunchul on 2022/07/21.
//

import SwiftUI
import StoreKit

struct ReView: View {
//  @Environment(\.requestReview) var requestReview

    var body: some View {
      Button("Review the app") {
//          requestReview()
      }
    }
}

struct ReView_Previews: PreviewProvider {
    static var previews: some View {
        ReView()
    }
}
