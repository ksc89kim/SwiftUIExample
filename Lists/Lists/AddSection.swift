//
//  AddSection.swift
//  Lists
//
//  Created by kim sunchul on 2021/02/11.
//  Copyright © 2021 kim sunchul. All rights reserved.
//

import SwiftUI

struct TaskRow: View {
  var body: some View {
    Text("Task data goes here")
  }
}

struct AddSection: View {
    var body: some View {
      List {
        Section(header: Text("important Task")) {
          TaskRow()
          TaskRow()
        }
        Section(header: Text("other tasks"), footer: Text("footer")) {
          TaskRow()
          TaskRow()
        }
      }
    }
}

struct AddSection_Previews: PreviewProvider {
    static var previews: some View {
        AddSection()
    }
}
