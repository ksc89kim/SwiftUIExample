//
//  ModifiersExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/07/26.
//

import SwiftUI

struct ModifiersExample: View {
    var body: some View {
        Text("Forecast: Sun")
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(.red)
        .padding()
        .background(.orange)
        .padding()
        .background(.yellow)
    }
}

struct ModifiersExample_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersExample()
    }
}
