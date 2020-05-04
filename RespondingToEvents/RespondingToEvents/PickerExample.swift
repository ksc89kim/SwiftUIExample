//
//  PickerExample.swift
//  RespondingToEvents
//
//  Created by kim sunchul on 2020/05/04.
//  Copyright © 2020 kim sunchul. All rights reserved.
//

import SwiftUI

struct PickerExample: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    
    @State private var selectedColor = 0
    
    var dateFormatter:DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State private var birthDate = Date()
    
    @State private var favoriteColor = 0
    
    var body: some View {
        VStack {
            Picker(selection:$selectedColor, label:Text("Please choose a color")) {
                ForEach(0 ..< colors.count) {
                    Text(self.colors[$0])
                }
            }
            Text("You selected: \(colors[selectedColor])")
            DatePicker(selection:$birthDate, in: ...Date(), displayedComponents: .date) {
                Text("Select a date")
            }
            Text("Date is \(birthDate, formatter:dateFormatter)")
            Picker(selection:$favoriteColor, label:Text("What is your favorite color?")) {
                ForEach(0..<colors.count) { index in
                    Text(self.colors[index]).tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("Value : \(favoriteColor)")
        }
    }
}

struct PickerExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerExample()
    }
}
