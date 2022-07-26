//
//  PaddingExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/07/26.
//

import SwiftUI

struct PaddingExample: View {
    var body: some View {
        Text("Hacking with Swift")
        .padding()
        .background(.red)
        .foregroundColor(.white)
    }
}

struct PaddingExample_Previews: PreviewProvider {
    static var previews: some View {
        PaddingExample()
    }
}
