//
//  StrokeExample.swift
//  TransformingViews
//
//  Created by kim sunchul on 2022/07/28.
//

import SwiftUI

struct StrokeExample: View {
    var body: some View {
      Circle()
//        .strokeBorder(.blue, lineWidth: 50)
        .stroke(.blue, lineWidth: 50)
        .frame(width: 200, height: 200)
        .padding()
    }
}

struct StrokeExample_Previews: PreviewProvider {
    static var previews: some View {
        StrokeExample()
    }
}
