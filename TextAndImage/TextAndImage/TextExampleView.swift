//
//  TextExampleView.swift
//  TextAndImage
//
//  Created by kim sunchul on 2020/04/21.
//  Copyright © 2020 kim sunchul. All rights reserved.
//

import SwiftUI

struct TextExampleView: View {
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    var dueDate = Date()
    
    var body: some View {
        List {
            //            줄수 지정
            Text("Hello, World!")
                .lineLimit(3)
            //            줄수 지정 및 ... 위치 수정
            Text("This is an extremely long textbstring that will never fit even the widest of Phones")
                .lineLimit(1)
                .truncationMode(.middle)
            //            폰트 지정 및 정렬
            Text("This is an extremely long textbstring that will never fit even the widest of Phones")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            //            포그라운드 색상 및 백그라운드 색상 지정
            Text("The best laid plans")
                .background(Color.yellow)
                .foregroundColor(Color.red)
            //            줄 간격 지정
            Text("This is an extremely long string that will never fit even the widest of Phones")
                .lineSpacing(50)
            //            포맷터 확인
            Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
            //            문자 간격
            //            tracking은 ligatures를 분리
            //            kerning은 ligatures를 미분리
            Text("Hello World")
                .tracking(20)
            VStack {
                Text("ffi")
                    .font(.custom("AmericanTypewriter", size: 72))
                    .kerning(50)
                Text("ffi")
                    .font(.custom("AmericanTypewriter", size: 72))
                    .tracking(50)
            }
            
        }    }
}

struct TextExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TextExampleView()
    }
}
