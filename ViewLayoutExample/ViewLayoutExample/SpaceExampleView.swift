//
//  SpaceExampleView.swift
//  ViewLayoutExample
//
//  Created by kim sunchul on 2020/04/23.
//  Copyright © 2020 kim sunchul. All rights reserved.
//

import SwiftUI

struct SpaceExampleView: View {
    var body: some View {
        VStack{
            //기본 패딩
            VStack {
                Text("SwiftUI")
                .padding()
                Text("rocks")
            }
            // Padding Bottom 적용
            Text("SwiftUI")
                .padding(.bottom)
            //  Padding 값 적용
            Text("SwiftUI")
            .padding(100)
            Text("SwiftUI")
                .padding(.bottom,100)
            
        }
    }
}

struct SpaceExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SpaceExampleView()
    }
}
