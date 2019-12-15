//
//  MenuRowView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/4/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    var menuItem:MenuItem = testMenuItem
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
//                .cornerRadius(10)
//                .border(Color("G4"),width: 2)
            .clipShape(Capsule())
                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: -5)
            VStack(alignment:.leading) {
                Text(menuItem.name)
                    .font(.title)
                    .fontWeight(.light)
                RatingsView(count: menuItem.rating)
            }
            Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
        
    }
}

