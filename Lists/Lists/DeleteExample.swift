//
//  DeleteExample.swift
//  Lists
//
//  Created by kim sunchul on 2020/05/22.
//  Copyright © 2020 kim sunchul. All rights reserved.
//

import SwiftUI

struct DeleteExample: View {
    @State private var users = ["Paul", "Taylor", "Adele"]

       var body: some View {
        if #available(iOS 14.0, *) {
          NavigationView {
            List {
              ForEach(users, id: \.self) { user in
                Text(user)
              }
              .onDelete(perform: delete)
            }
          }
          .toolbar {
            EditButton()
          }
        } else {
        }
       }

       func delete(at offsets: IndexSet) {
           users.remove(atOffsets: offsets)
       }
}

struct DeleteExample_Previews: PreviewProvider {
    static var previews: some View {
        DeleteExample()
    }
}
