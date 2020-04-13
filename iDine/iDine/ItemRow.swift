//
//  ItemRow.swift
//  iDine
//
//  Created by kim sunchul on 2020/04/13.
//  Copyright © 2020 kim sunchul. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var item:MenuItem
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            VStack(alignment:.leading){
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item:MenuItem.example)
    }
}
