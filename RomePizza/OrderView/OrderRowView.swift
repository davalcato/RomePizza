//
//  OrderRowView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/4/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct OrderRowView: View {
    var body: some View {
        HStack(alignment:.firstTextBaseline) {
            Text("Your order item here")
                .font(.headline)
            Spacer()
            Text("$0.00")
            .bold()
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
    }
}
