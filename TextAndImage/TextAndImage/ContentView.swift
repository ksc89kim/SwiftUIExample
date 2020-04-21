//
//  ContentView.swift
//  TextAndImage
//
//  Created by kim sunchul on 2020/04/21.
//  Copyright © 2020 kim sunchul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List {
//            줄수 지정 Modifier
            Text("Hello, World!")
                       .lineLimit(3)
            
//            줄수 지정 및 ... 위치 수정 Modifier
                Text("This is an extremely long textbstring that will never fit even the widest of Phones")
                .lineLimit(1)
                .truncationMode(.middle)
            
        }
       
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
