//
//  BackgroundListView.swift
//  Lists
//
//  Created by kim sunchul on 2021/02/11.
//  Copyright © 2021 kim sunchul. All rights reserved.
//

import SwiftUI

struct BackgroundListView: View {
    var body: some View {
      List {
        ForEach(0..<10) {
          Text("Row \($0)")
        }
        .listRowBackground(Color.red)
      }
    }
}

struct BackgroundListView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundListView()
    }
}
