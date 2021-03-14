//
//  GroupTestView.swift
//  Contains
//
//  Created by kim sunchul on 2021/03/14.
//

import SwiftUI

struct GroupTestView: View {
    var body: some View {
      VStack {
        Group {
            Text("Line")
            Text("Line")
            Text("Line")
            Text("Line")
            Text("Line")
            Text("Line")
        }
        Group {
            Text("Line")
            Text("Line")
            Text("Line")
            Text("Line")
            Text("Line")
        }
      }
    }
}

struct GroupTestView_Previews: PreviewProvider {
    static var previews: some View {
      GroupTestView()
    }
}
