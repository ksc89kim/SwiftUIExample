//
//  ObservedObjectExample.swift
//  AdvancedState
//
//  Created by kim sunchul on 2020/05/12.
//  Copyright © 2020 kim sunchul. All rights reserved.
//

import SwiftUI

struct ObservedObjectExample: View {
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Your score is \(settings.score)")
            Button(action: {
                self.settings.score += 1
            }){
                Text("Increase Score")
            }
        }
    }
}

struct ObservedObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectExample()
    }
}
