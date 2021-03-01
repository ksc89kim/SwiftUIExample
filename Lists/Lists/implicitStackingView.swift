//
//  implicitStackingView.swift
//  Lists
//
//  Created by kim sunchul on 2021/03/01.
//  Copyright © 2021 kim sunchul. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
  let id = UUID()
  let userName = "Anonymous"
}

struct implicitStackingView: View {
  let users = [User(), User(), User()]
    var body: some View {
      List(users) { user in
        Image("paul-hudson")
          .resizable()
          .frame(width: 40, height: 40)
        Text(user.userName)
      }
    }
}

struct implicitStackingView_Previews: PreviewProvider {
    static var previews: some View {
        implicitStackingView()
    }
}
