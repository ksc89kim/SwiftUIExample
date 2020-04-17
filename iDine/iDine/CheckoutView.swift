//
//  CheckoutView.swift
//  iDine
//
//  Created by kim sunchul on 2020/04/17.
//  Copyright © 2020 kim sunchul. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order:Order
    @State private var paymentType = 0
    
    static let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay?", selection:$paymentType) {
                    ForEach( 0 ..< Self.paymentTypes.count ) {
                        Text(Self.paymentTypes[$0])
                    }
                }
            }
        }.navigationBarTitle(Text("Payment"), displayMode: .inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        CheckoutView().environmentObject(order)
    }
}
