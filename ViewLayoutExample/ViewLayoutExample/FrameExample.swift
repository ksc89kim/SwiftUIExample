//
//  FrameExample.swift
//  ViewLayoutExample
//
//  Created by kim sunchul on 2020/04/30.
//  Copyright © 2020 kim sunchul. All rights reserved.
//

import SwiftUI

struct FrameExample: View {
    var body: some View {
        VStack {
            Button(action:{
                print("Button tapped")
            }) {
                Text("Welcome").frame(minWidth:0, maxWidth: 200, minHeight: 0,maxHeight: 200).font(.largeTitle)
            }
//            모든 화면을 채우고 싶으면, infinity를 사용하면됨.
            Text("Please log in").frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .font(.largeTitle).foregroundColor(.white).background(Color.red)
//            화면 사이즈 알고 싶을 경우, 직접적으로 계산하고 싶을때.
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    Text("Left")
                        .frame(width: geometry.size.width / 2, height: 50)
                        .background(Color.yellow)
                    Text("Right")
                        .frame(width: geometry.size.width / 2, height: 50)
                        .background(Color.orange)
                }
            }
        }
        
    }
}

struct FrameExample_Previews: PreviewProvider {
    static var previews: some View {
        FrameExample()
    }
}
