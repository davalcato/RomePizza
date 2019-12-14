//
//  HistoryRowView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/6/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
        HStack(alignment:.top) {
            Image("1_100w")
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5)
            
            Text("Rome Chicken")
                .font(.title)
            Spacer()
            
        }.overlay(
            Image(systemName: "chevron.right.square")
            .padding()
                .font(.title)
            .foregroundColor(Color("G3"))
            ,alignment:.trailing
            
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
