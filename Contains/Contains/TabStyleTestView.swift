//
//  TabStyleTestView.swift
//  Contains
//
//  Created by kim sunchul on 2021/03/14.
//

import SwiftUI

struct TabStyleTestView: View {
    var body: some View {
      TabView {
        Text("First")
        Text("Second")
        Text("Third")
        Text("Fourth")
      }
      .tabViewStyle(PageTabViewStyle())
      .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct TabStyleTestView_Previews: PreviewProvider {
    static var previews: some View {
        TabStyleTestView()
    }
}
